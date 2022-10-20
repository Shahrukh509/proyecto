@extends('layouts.app')

@section('content')
    <h1>Lista de Uusarios</h1>

    @empty ($users)
        <div class="alert alert-warning">
            La lista de usuarios está vacía.
        </div>
    @else
        <div class="table-responsive">
            <table class="table table-striped">
                <thead class="thead-light">
                    <tr>

                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Admin Since</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($users as $user)
                    <tr>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                            {{ optional($user->admin_since)->diffForHumans() ?? 'Nunca' }}
                        </td>
                        <td>
                            <form method="POST" class="d-inline" action="{{ route('users.admin.toggle', ['user' => $user->id]) }}">
                                @csrf
                                <button type="submit" class="btn btn-link">
                                    {{ $user->isAdmin() ? 'Remover' : 'Hacer' }}
                                    Administrador
                                </button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @endempty
@endsection
