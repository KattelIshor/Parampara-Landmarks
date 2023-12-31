@extends('AdminPanel.layouts.main')
@section('main-section')
    <div class="container">
        <div class="container-fluid">
            <div class="mt-4 ">
                <h2>Slider</h2>
                <div aria-label="breadcrumb mt-5">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item" aria-current="page">Slider</li></li>
                        <li class="breadcrumb-item active">@if (!empty($slider))Edit @else Add @endif</li>
                        <div class="d-flex ms-auto">
                            <a class="btn btn-primary disabled" href="{{ route('add_slider') }}">Add</a>
                        </div>
                    </ol>
                </div>
            </div>
            {{-- <h1>This is Your Slider</h1> --}}
            <div class="mt-4">
                <div class="card" style="width:90%;">
                    <div class="card-header">
                        <h4 class="">@if (!empty($slider))Edit @else Add @endif Slider</h4>
                    </div>
                    <div class="card-body">
                        <form class="row g-3" action="@if (!empty($slider)){{ route('slider_edited', $slider->id) }}@else{{ route('slider_added') }}@endif" method="POST"
                            enctype="multipart/form-data">
                            @csrf

                            <div class="col">

                                <div class="col-md-12 mb-2">
                                    <label for="" class="form-label">Slider Name</label>
                                    <input type="text" class="form-control" name="name" value="@if (!empty($slider)){{ $slider->name }}@else{{ old('name') }}@endif"
                                        required>
                                    <div class="text-danger">* @error('name') {{ $message }} @enderror</div>
                                </div>
                                <div class="col-md-12">
                                    <label for="" class="form-label">Slider Image</label>
                                    <p class="text-muted form-label">for best output upload [400 x 225] Image</p>
                                    <div class="input-group">
                                        <input type="file" class="form-control" name="image" id=""
                                            @if (empty($slider))required @endif>
                                    </div>
                                    <div class="text-danger mt-0">* @error('image') {{ $message }} @enderror</div>
                                </div>

                            </div>
                            <div class="col-md-4">
                                @if (!empty($slider))
                                    <label for="" class="form-label">Old Image</label>
                                    <img class="form-control" src="{{ asset('/storage/images/slider' . $slider->image) }}"
                                        alt="Error">
                                @endif
                            </div>
                            <div class="col-12">
                                <button class="btn @if (!empty($slider)) btn-success @else btn-primary @endif" type="submit">@if (!empty($slider)) Update @else Submit @endif</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
