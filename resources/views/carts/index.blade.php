@extends('layouts.app')

@section('content')
    <h1>Tu Carro</h1>
    @if (!isset($cart) || $cart->products->isEmpty())
        <div class="alert alert-warning">
            Tu Carro está vacío.
        </div>
    @else
        <h4 class="text-center">Total de Carro:  $ <strong>{{ $cart->total }}</strong></h4>
        <a class="btn btn-success mb-3" href="{{ route('orders.create') }}">
            Comenzar Orden
        </a>
        <div class="row">
            @foreach ($cart->products as $product)
                <div class="col-12 col-md-3">
                    @include('components.product-card')
                </div>
            @endforeach
        </div>
    @endempty
@endsection
