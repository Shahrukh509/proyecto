<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Payment Slip</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>

<body>

    <div class="container mt-4">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Payment Slip</h5>
            </div>
            <div class="modal-body">
                <div class="form-group row">
                    <div class="col-sm-8 mb-3 mb-sm-0">
                        <div class="row">
                            <div class="col-sm-6">
                                <label>Name :</label>
                                <input type="text" name="name" class="form-control form-control-user" value="{{$order->user->name}}" readonly><br>
                                <label>Delivery option :</label>
                                <input type="text" id="deliveryOption" value="Pick up from store" class="form-control form-control-user" readonly=""><br>
                            </div>
                            <div class="col-sm-6">
                                <label>Date :</label>
                                <input type="text" name="name" class="form-control form-control-user" value="{{date('Y-m-d')}}" readonly><br>
                                <label>Delivery/Pickup Date :</label>
                                <input type="text" id="deliveryOption" value="{{$order->delivery_date}}" class="form-control form-control-user" readonly=""><br>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <label>Choosen Products :</label>
                            @foreach($order->products as $p)
                            <input type="text" name="price" value="{{$p->title}}" class="form-control form-control-user" readonly="">
                            @endforeach
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <label>Barcode :</label><br>
                        {!! DNS2D::getBarcodeHTML("$order->total", 'QRCODE') !!}
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <a class="btn btn-success" href="{{route('main')}}">Home</a>
            </div>
        </div>
    </div>
</body>
</html>