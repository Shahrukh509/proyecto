@extends('layouts.app')

@section('content')
    <h1>Crear un Producto</h1>

    <form
        method="POST"
        action="{{ route('products.store') }}"
        enctype="multipart/form-data"
    >
        @csrf
        <div class="form-row">
            <label>Título</label>
            <input class="form-control" type="text" name="title" value="{{ old('title') }}" required>
        </div>
        <div class="form-row">
            <label>Descripción</label>
            <input class="form-control" type="text" name="description" value="{{ old('description') }}" required>
        </div>
        <div class="form-row">
            <label>Precio</label>
            <input class="form-control" type="number" min="1.00" step="0.01" name="price" value="{{ old('price') }}" required>
        </div>
        <div class="form-row">
            <label>Stock</label>
            <input class="form-control" type="number" min="0" name="stock" value="{{ old('stock') }}" required>
        </div>
        <div class="form-row">
            <label>Status</label>
            <select class="custom-select" name="status" required>
                <option value="" selected>Seleccionar...</option>
                <option {{ old('status') == 'available' ? 'selected' : '' }} value="available">Disponible</option>
                <option {{ old('status') == 'unavailable' ? 'selected' : '' }} value="unavailable">No Disponible</option>
            </select>
        </div>
        <div class="form-row">
            <label>
                {{ __('Images') }}
            </label>

            <div class="custom-file">
                <input type="file" accept="image/*" name="images[]" class="custom-file-input" multiple>
                <label class="custom-file-label">
                    Imágenes de Producto...
                </label>
            </div>
        </div>
        <div class="form-row mt-3">
            <button type="submit" class="btn btn-primary btn-lg">Crear Producto</button>
        </div>
    </form>
@endsection
