@extends('layouts.app')

@section('content')
    <h1>Detalles Pago</h1>
    <form
        class="d-inline"
        method="POST"
        action="{{ route('orders.payments.store', ['order' => $order->id]) }}"
    >
        <div class="row">
            <div class="col-md-3">
                <b>Opciones de Entrega:</b><br>
                <input type="radio" id="store" onclick="handleClick(this)" name="delivery" value="store" checked>
                <label for="store">Entrega de Producto en Tienda</label><br>
                <input type="radio" id="home" onclick="handleClick2(this)" name="delivery" value="home">
                <label for="home">Entrega de Producto a domicilio</label>
                <div class="form-group row">
                    <div class="col-md-12">
                        <label for="email" class="col-form-label text-md-left">Fecha de Entrega :</label>
                        <select class="form-control" name="ddate" id="cars" required>
                            <option value="{{date('Y-m-d', strtotime(date('Y-m-d'). ' + 3 days'))}}">{{date('Y-m-d', strtotime(date("Y-m-d"). ' + 3 days'))}}</option>
                            <option value="{{date('Y-m-d', strtotime(date('Y-m-d'). ' + 5 days'))}}">{{date('Y-m-d', strtotime(date("Y-m-d"). ' + 5 days'))}}</option>
                            <option value="{{date('Y-m-d', strtotime(date('Y-m-d'). ' + 7 days'))}}">{{date('Y-m-d', strtotime(date("Y-m-d"). ' + 7 days'))}}</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-12" style="display:none" id="addr">
                        <label for="email" class="col-form-label text-md-left">Dirección :</label>
                        <input id="address" type="text" class="form-control" value="abc" name="address" required>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
            <a href="" class="btn btn-success" data-toggle="modal" data-target="#purchaseDetailsModal">Detalles Compra</a>
            </div>
        </div>
        <h4 class="text-center"><strong>Total a Pagar: $ </strong> {{ $order->total }}</h4>
        <div class="text-center mb-3">
            
                @csrf
                <button type="submit" class="btn btn-success">Pago</button>
            
        </div>
    </form>


    <div class="modal fade" id="purchaseDetailsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Detalles Compra</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <div class="col-sm-6 mb-3 mb-sm-0">
                            <label>Nombre :</label>
                            <input type="text" name="name" class="form-control form-control-user" value="{{$order->user->name}}" readonly>
                        </div>
                        <div class="col-sm-6">
                            <label>Total :</label>
                            <input type="text" name="price" value="$ {{$order->total}}" class="form-control form-control-user" readonly="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-6 mb-3 mb-sm-0">
                            <label>Fecha :</label>
                            <input type="text" name="name" class="form-control form-control-user" value="{{date('Y-m-d')}}" readonly>
                        </div>
                        <div class="col-sm-6">
                            <label>Opción de Entrega :</label>
                            <input type="text" id="deliveryOption" value="Pick up from store" class="form-control form-control-user" readonly="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12">
                            <label>Productos elegidos :</label>
                            @foreach($order->products as $p)
                            <input type="text" name="price" value="{{$p->title}}" class="form-control form-control-user" readonly="">
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Back</button>
                </div>
            </div>
        </div>
    </div>



<script>
    var handleClick = function(e) {
    if(e.checked)
    {
        var output = document.getElementById('addr');
        output.style.display="none";
        document.getElementById('deliveryOption').value="Pick up from store";
    }
  };

  var handleClick2 = function(e) {
    if(e.checked)
    {
        var output = document.getElementById('addr');
        document.getElementById('address').value = null;
        document.getElementById('deliveryOption').value="Deliver at home";
        output.style.display="block";
    }
  };

</script>
@endsection
