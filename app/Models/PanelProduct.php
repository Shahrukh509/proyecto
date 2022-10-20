<?php

namespace App\Models;
use App\Models\Product;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PanelProduct extends Product
{
    protected static function booted()
    {
        //static::addGlobalScope(new AvailableScope);
    }
    public function getForeignKey(){
        $parent = get_parent_class($this);
        return (new $parent)->getForeignKey();
    }

    public function getMorphClass(){
        $parent = get_parent_class($this);
        return (new $parent)->getMorphClass();
    }
}
