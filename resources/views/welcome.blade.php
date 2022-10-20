{{-- {{ dd(request()->route()->getAction()); }} --}}
@extends('layouts.app')

@section('content')
    <h1></h1>
    @empty ($products)
        <div class="alert alert-danger">
            ¡No hay productos todavía!
        </div>
    @else
        <div class="row">
            {{-- @dump($products) --}}

            @foreach ($products as $product)

                <div class="col-12 col-md-3">
                    <div class="table-responsive">
                        @include('components.product-card')
                    </div>
                 </div>
            @endforeach

            {{-- @dump($products) --}}

            {{-- @dd(\DB::getQueryLog()) --}}
        </div>
    @endempty
@endsection
