@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>План работы</h1>
@stop

@section('content')
    @include('messages')
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Добавить
    </button>
    <table id="table_id" class="display">
        <thead>
        <tr>
            <th>#</th>
            <th>Название</th>
            <th>Файл</th>
            <th>Действие</th>
        </tr>
        </thead>
        <tbody>
        @foreach($workPlan as $item)
            <tr>
                <td>{{ $loop->index +1 }}</td>
                <td>{{ $item->title }}</td>
                <td>{{ $item->files }}</td>
                <td>
                    <a href="{{ url('planwork/edit/'.$item->id) }}"><i class="fas fa-edit"></i></a>
                    <a href="{{ url('planwork/remove/'.$item->id) }}"><i class="fas fa-trash-alt" style="color:Red;"></i></a>
                </td>
            </tr>
        @endforeach

        </tbody>
    </table>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Добавить</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('uploadWorkPlan') }}" method="post" enctype="multipart/form-data">
                <div class="modal-body">

                        @csrf
                        <div class="form-group">
                            <label for="exampleInputEmail1">Название</label>
                            <input type="text" name="title" class="form-control">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Загрузить файл</label>
                            <input type="file" name="file" class="form-control">
                        </div>



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                </div>
                </form>
            </div>
        </div>
    </div>
@stop

@section('css')
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
@stop

@section('js')

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
    <script>
        $(document).ready( function () {
            $('#table_id').DataTable();
        } );
    </script>
@stop
