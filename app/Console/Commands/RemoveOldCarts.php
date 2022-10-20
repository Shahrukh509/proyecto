<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Cart;

class RemoveOldCarts extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'carts:remove-old {--days=7 : Los días después, los productos agregados al carro serán removidos. }';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Remover antiguo carro desde un conjunto dado por días';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $deadLine = now()->subDays($this->option('days'));
        $counter = Cart::whereDate('updated_at','<=',$deadLine)->delete();
        $this->info("¡Hecho! {$counter} carros fueron removidos.");
    }
}
