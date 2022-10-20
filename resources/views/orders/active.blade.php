@extends('layouts.app')

@section('content')
    <h1>Lista de pedidos activos</h1>

    @empty ($activeOrders)
        <div class="alert alert-warning">
            La lista de pedidos activos está vacía
        </div>
    @else
        <div class="table-responsive">
            <table class="table table-striped">
                <thead class="thead-light">
                    <tr>
                        <th>Order Id</th>
                        <th>Nombre Cliente</th>
                        <th>Monto</th>
                        <th>Dirección Entrega</th>
                        <th>Fecha de entrega</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($activeOrders as $o)
                    <tr>
                        <td>{{ $o->id }}</td>
                        <td>{{ $o->user->name }}</td>
                        <td>{{ $o->total }}</td>
                        @if($o->payment->address==null)
                            <td>Retira desde la tienda</td>
                        @else
                            <td>{{ $o->payment->address }}</td>
                        @endif
                        <td>
                            <form method="POST" action="{{ route('order.setDate') }}">
                                @csrf
                                <input type="hidden" name="id" value="{{ $o->id }}">
                                <input type="date" name="ddate" value="{{ $o->delivery_date }}" id="ddate" required>
                                <input type="submit" class="btn-success" value="set">
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @endempty
@endsection
