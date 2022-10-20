<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class MainController extends Controller
{
    public function index()
    {

        // print_r(__DIR__);exit;

        $products = Product::with('images')->get();

        return view('welcome')->with([
            'products' =>Product::all(),
        ]);
    }
}
