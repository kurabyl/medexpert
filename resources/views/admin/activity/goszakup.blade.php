@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Государственные закупки
    </h1>
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
            <th>Ссылка</th>
            <th>Действие</th>
        </tr>
        </thead>
        <tbody>
        @foreach($goszakup as $item)
            <tr>
                <td>{{ $loop->index +1 }}</td>
                <td>{{ $item->title }}</td>
                <td>{{ $item->link }}</td>
                <td>
                    <a href="{{ url('admin/goszakup/?post_id='.$item->id.'#editModal') }}"><i class="fas fa-edit"></i></a>
                    <a href="{{ url('admin/remove/activities/'.$item->id.'/4') }}"><i class="fas fa-trash-alt" style="color:Red;"></i></a>
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
                <form action="{{ route('addUploadData') }}" method="post" enctype="multipart/form-data">
                <div class="modal-body">

                        @csrf
                    <input type="hidden" name="type" value="4">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Название</label>
                            <input type="text" name="title" class="form-control">
                        </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Ссылка</label>
                        <input type="text" name="link" class="form-control">
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

    <div id="editModal" class="modalDialog" >
        <div>
            <a href="#close" title="Закрыть" class="close">X</a>
            <h4>Редактировать</h4>
            <form action="{{ route('updateUploadData') }}" method="post" enctype="multipart/form-data">
                <div class="modal-body">

                    @csrf
                    <input type="hidden" name="type" value="4">
                    <input type="hidden" name="id" value="{{ request()->post_id }}">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Название</label>
                        <input type="text" name="title" class="form-control" value="{{ $find->title ?? '' }}">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Ссылка</label>
                        <input type="text" name="link" class="form-control" value="{{ $find->link ?? '' }}">
                    </div>



                </div>
                <div class="modal-footer">
                    <a href="#close" class="btn btn-secondary" >Закрыть</a>
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                </div>
            </form>
        </div>
    </div>
@stop

@section('css')
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
    <link rel="stylesheet" href="{{ asset('css/modal.css?cahc='.time()) }}">

@stop

@section('js')

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
    <script>
        $(document).ready( function () {
            $('#table_id').DataTable();
        } );
    </script>
@stop
