<?php

namespace App\Http\Controllers\Panel;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use App\Models\PanelProduct;
use App\Http\Requests\ProductRequest;
use App\Scopes\AvailableScope;

class ProductController extends Controller
{

    public function index(){
        return view('products.index')->with([
            'products' => PanelProduct::without('images')->get(),
        ]);
    }

    public function create(){
        return view('products.create');
    }

    public function store(ProductRequest $request){

       $product =  PanelProduct::create($request->validated());

       foreach ($request->images as $image){
            $product->images()->create([
                'path' => 'images/'.$image->store('products','images'),
            ]);
       }
       return redirect()
                ->route('products.index')
                ->withSuccess("Producto {$product->id} fue creado con éxito.");
    }

    public function show(PanelProduct $product){
        return view('products.show')->with([
            'product' =>$product,
        ]);
    }

    public function edit(PanelProduct $product){
        return view('products.edit')->with([
            'product' => $product,
        ]);
    }

    public function update(ProductRequest $request,PanelProduct $product ){

        $product->update($request->validated());

        if ($request->hasFile('images')) {

            foreach ($product->images as $image){
                    $path = storage_path("app/public/{$image->path}");
                    File::delete($path);
                    $image->delete();
            }
            foreach ($request->images as $image){
                $product->images()->create([
                    'path' => 'images/'.$image->store('products','images'),
                ]);
            }
        }
        return redirect()
        ->route('products.index')
        ->withSuccess("Producto {$product->id} fue creado con éxito.");
    }

    public function destroy(PanelProduct $product){
       // $product = Product::findOrFail($product);
        $product-> delete();
        //session()->flash('success', "Producto {$product->id} fue eliminado con éxito.");
       return redirect()
       ->route('products.index')
       ->withSuccess("Producto {$product->id} fue eliminado con éxito.");
    }

}
