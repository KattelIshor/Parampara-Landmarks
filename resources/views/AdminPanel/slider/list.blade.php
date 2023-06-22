@extends('AdminPanel.layouts.main')
@section('main-section')
    <div class="container">
        <div class="container-fluid">
            <div class="mt-4 ">
                <h2>Slider</h2>
                <div aria-label="breadcrumb mt-5">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item" aria-current="page">Slider</li>
                        <li class="breadcrumb-item active">List</li>
                        <div class="d-flex ms-auto">
                            <a class="btn btn-primary" href="{{ route('add_slider') }}">Add</a>
                        </div>
                    </ol>
                </div>
            </div>
            <div class="{{ session()->get('msgst') ? 'alert  alert-' . session()->get('msgst') : 'm-0 border-0 p-0' }}">
                {{ session()->get('msg') ?? null }}</div>
            {{-- <h1>This is Your Slider</h1> --}}
            <div class="mt-4">
                <table class="table table-hover table-striped" id="data">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Slider Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($slider as $item)
                            <tr>
                                <th scope="row">{{ $item->id }}</th>
                                <th scope="row">{{ $item->name }}</th>
                                <th scope="row"><img height="40rem" class="rounded" style="cursor: pointer"
                                        data-fancybox="gallery" data-src="{{ asset('/storage/images/slider' . $item->image) }}"
                                        src="{{ asset('/storage/images/' . $item->image) }}" alt="Error"></th>
                                <th scope="row">
                                    <a class="btn btn-success btn-sm" href="{{ route('edit_slider', $item->id) }}"><i
                                            class="fa fa-edit" aria-hidden="true"></i></a>
                                    @if (session()->get('AdminUser')['type'] == 'R')
                                        <a class="btn btn-danger btn-sm" onclick="return confirm('Sure to delete?')"
                                            href="{{ route('del_slider', $item->id) }}"><i class="fa fa-trash"
                                                aria-hidden="true"></i></a>
                                    @endif
                                </th>
                            </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script>
        $(document).ready(function() {
            $('.alert').fadeOut(3000);
            Fancybox.bind("gallery", {});
        });
    </script>
@endsection
