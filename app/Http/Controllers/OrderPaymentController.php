<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Payment;
use Illuminate\Http\Request;
use App\Services\CartService;
use Illuminate\Support\Facades\DB;

class OrderPaymentController extends Controller
{
    public $cartService;

    public function __construct(CartService $cartService){
        $this->cartService = $cartService;
        $this->middleware('auth');
    }

    public function create(Order $order)
    {
        return view('payments.create')->with([
            'order' => $order,
        ]);
    }

    public function store(Request $request, Order $order)
    {
        return DB::transaction(function() use ($order, $request){
        //PaymentService::handlePayment();
            $this->cartService->getFromCookie()->products()->detach();
            if($request->address=='abc')
            {
                $order->payment()->create([
                    'amount' => $order->total,
                    'payed_at' =>now(),
                ]);
            }
            else
            {
                $order->payment()->create([
                    'amount' => $order->total,
                    'payed_at' =>now(),
                    'address' => $request->address,
                ]);
            }
            $order->status = 'payed';
            $order->delivery_date = $request->ddate;
            $order->save();
            return view('paymentSlip.paymentSlip')->with('order', $order);

            return redirect()
            ->route('main')
            ->withSuccess("¡Gracias! Tu pago para {$order->total} fue realizado.");
        },5);
    }
}
