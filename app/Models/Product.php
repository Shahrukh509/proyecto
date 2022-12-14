<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Scopes\AvailableScope;
use App\Models\Cart;
use App\Models\Order;
use App\Models\Image;

class Product extends Model
{
    protected $table = 'products';
    protected $with = ['images'];

    use HasFactory, SoftDeletes;

   protected $fillable = [
        'title',
        'description',
        'price',
        'stock',
        'status',
    ];

    protected static function booted()
    {
        static::addGlobalScope(new AvailableScope);
        static::updated(function($product) {
            if ($product->stock == 0 && $product->status == 'available') {
                $product->status = 'unavailable';
                $product->save();
            }
        });
    }

    public function carts(){
        return $this->morphedByMany(Cart::class,'productable')->withPivot('quantity');
    }

    public function orders(){
        return $this->morphedByMany(Order::class,'productable')->withPivot('quantity');
    }

    public function images(){
        return $this->morphMany(Image::class,'imageable');
    }

    public function scopeAvailable($query){
        $query->where('status','available');
    }

    public function getTotalAttribute(){
        return $this->pivot->quantity * $this->price;
    }

}
