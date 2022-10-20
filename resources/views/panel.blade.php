@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Administración Panel</div>

                <div class="card-body">
                    <div class="list-group">
                        <a class="list-group-item" href="{{ route('products.index') }}">
                            Gestión de Productos
                        </a>
                        <a class="list-group-item" href="{{ route('orders.index') }}">
                            Órdenes activas
                        </a>
                        <a class="list-group-item" href="{{ route('users.index') }}">
                            Gestión de Usuarios
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
