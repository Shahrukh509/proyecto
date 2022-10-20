<?php

namespace App\Http\Controllers\Panel;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;

class ActiveOrderController extends Controller
{
    public function index(){
        return view('orders.active')->with([
            'activeOrders' => Order::where('status', 'payed')->get(),
        ]);
    }

    public function setDeliveryDate(Request $request)
    {
        $order=Order::where('id', $request->id)->update([
            'delivery_date'=>$request->ddate,
        ]);
        if($order)
        {
            return back()->with('success', 'Delivery Date has been set successfully');
        }
        return back()->with('fail', 'Something Went Wrong!');
    }
}
