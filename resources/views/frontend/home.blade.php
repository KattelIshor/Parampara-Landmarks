@extends('layouts.app')
@push('title')
    {{ $CMS['home_title'] ?? '' }}
@endpush
@push('meta')
    {{ $CMS['home_meta'] ?? '' }}
@endpush
@section('content_box')
    <main>
        @include('layouts.carousel')

        <div class="container marketing">
            <div class="col-12 mb-5 text-center">
                <h1>Our Services</h1>
            </div>
    <div class="container">
        <div class="row g-3">
            <div class="d-flex">

                <div class="about__content col-md">
                    <div class="content__info shadow">
                    <div class="first__image">
                        <img class="image" src="{{ asset('/images/first.jpg') }}" alt="">
                    </div>
                    <h3 class="title">Find a home</h3>
                    <div class="first___content">
                        <p class="content__des">Find your place with an immersive photo <br>
                            experience and the most  listings, including <br>
                        things you won't find anywhere else.</p>
                    </div>
                    <div class="button">
                        <button type="button" class="buttons btn btn-lg border-primary text-primary">See your options</button>
                    </div>
                </div>
            </div>

                <div class="about__content col-md">
                    <div class="content__info shadow">
                    <div class="first__image">
                        <img class="image" src="{{ asset('/images/second.jpg') }}" alt="">
                    </div>
                    <h3 class="title">Sell a home</h3>
                    <div class="first___content">
                        <p class="content__des">No matter what path you take to sell your <br>home, we can help you navigate a successful <br>
                        sale.</p>
                    </div>
                    <div class="button">
                        <button type="button" class="buttons btn btn-lg border-primary text-white btn-primary">See your options</button>
                    </div>
                </div>
            </div>

                <div class="about__content col-md">
                    <div class="content__info shadow">

                    <div class="first__image">
                        <img class="image" src="{{ asset ('/images/third.jpg') }}" alt="">
                    </div>
                    <h3 class="title">Rent a home</h3>
                    <div class="first___content">
                        <p class="content__des">We're creating a  seamless online experience <br> -from shoping on the largest rental <br>
                        network, to applying, to paying rent.</p>
                    </div>
                    <div class="button">
                        <button type="button" class="buttons btn btn-lg border-primary text-primary">Find rentals</button>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>

            <!-- Three columns of text below the carousel -->

            <div class="row">
                <div class="col-12 mb-5 text-center">
                    <h1>Categories</h1>
                </div>
                <div id="cat_cara" class="carousel">
                    @forelse ($showcate as $item)
                        <div class="carousel__slide" style="width: 350px">
                            {{-- <div class=""> --}}
                            <div class="shadow w-100 mx-auto">
                                <a class="" href="{{ route('show_category', $item->slug_name) }}">
                                    <img style="height: 100%" class="w-100 rounded-top"
                                        src="{{ asset('/storage/images/' . $item->image) }}" alt="{{ $item->name }}">
                                </a>
                                <a class="btn btn-outline-primary rounded-bottom btn-lg w-100"
                                    href="{{ route('show_category', $item->slug_name) }}">{{ $item->name }}</a>
                            </div>
                            {{-- </div><!-- /.col-lg-4 --> --}}
                        </div>
                    @empty
                    <div class="carousel__slide" style="width: 350px">
                        <div class="shadow w-100 mx-auto">

                            <a class="btn btn-outline-primary rounded-bottom btn-lg w-100"
                                href="">No Categories</a>
                        </div>
                    </div>
                    @endforelse
                </div>
            </div><!-- /.row -->

            <!-- START THE FEATURETTES -->

            <hr class="featurette-divider">

            <div class="row featurette">
                @if (!empty($CMS['home_image']))
                    <div class="col-md-5">
                        <img width="500px" class="h-auto" src="{{ asset('/storage/cms/' . $CMS['home_image']) }}"
                            alt="Error">
                    </div>
                @endif
                @if (!empty($CMS['home_image']))
                    <div class="col-md-12 d-flex align-items-center">
                        <div class="text-center w-100" style="text-align: justify">
                            {!! $CMS['home_content'] !!}
                        </div>
                    </div>
                @else
                    <div class="col-md-7 d-flex align-items-center">
                        <div class="w-100" style="text-align: justify">
                            {!! $CMS['home_content'] ?? '' !!}
                        </div>
                    </div>
                @endif
            </div>

            <hr class="featurette-divider">
            <div class="row featurette mb-3">
                <div class="col-12">
                    <h1>Newly Added</h1>
                </div>
            </div>
            <div class="row featurette">
                @forelse ($newlyAdded as $item)
                    <div class="col-4 mb-4">
                        <div class="card mx-auto shadow">
                            <a href="{{ route('show_pro', $item->title_slug) }}">
                                <img height="300px" class="card-img-top"
                                    src="{{ asset('/storage/property/' . $item->image) }}" alt="{{ $item->title }}">
                            </a>
                            <div class="card-body">
                                <h4 class="card-title mb-1">{{ $item->title }}</h4>
                                <p class="card-text mb-1">
                                    <a class="btn btn-sm btn-outline-primary"
                                        href="{{ route('show_purpose', $item->purpose) }}">
                                        {{ ucfirst($item->purpose) }}
                                    </a>
                                    <a class="btn btn-sm btn-outline-secondary"
                                        href="{{ route('show_category', $item->Cate->slug_name) }}">
                                        {{ $item->Cate->name }}
                                    </a>
                                    <a class="btn btn-sm btn-outline-dark"
                                        href="{{ route('show_city', $item->City->slug_city) }}">
                                        {{ $item->City->city }}
                                    </a>
                                </p>
                                <p class="card-text">
                                    <i class="fas fa-bed"></i> {{ $item->rooms }}
                                    <i class="fas fa-shower"></i> {{ $item->bathrooms }}
                                </p>
                            </div>
                        </div>
                    </div>
                @empty
                    {{-- <div class="card mx-auto shadow">
                        <div class="card mx-auto shadow"> --}}
                    <h4>Nothing new added recently...</h4>
                    {{-- </div>
                    </div> --}}
                @endforelse
            </div>

            @forelse ($catedata as $key => $cate)
                @if (sizeof($cate->Pro) > 0)
                    <hr class="featurette-divider">
                    <div class="row featurette mb-3">
                        <div class="col-12">
                            <a class="text-decoration-none text-secondary" href="">
                                <h1 class="">
                                    {{ $cate->name }}
                                </h1>
                            </a>
                        </div>
                    </div>
                    <div class="row featurette">
                        @foreach ($cate->Pro as $item)
                            <div class="col-4 mb-4">
                                <div class="card mx-auto shadow">
                                    <a href="{{ route('show_pro', $item->title_slug) }}">
                                        <img height="300px" class="card-img-top"
                                            src="{{ asset('/storage/property/' . $item->image) }}"
                                            alt="{{ $item->title }}">
                                    </a>
                                    <div class="card-body">
                                        <h4 class="card-title mb-1">{{ $item->title }}</h4>
                                        <p class="card-text mb-1">
                                            <a class="btn btn-sm btn-outline-primary"
                                                href="{{ route('show_purpose', $item->purpose) }}">
                                                {{ ucfirst($item->purpose) }}
                                            </a>
                                            <a class="btn btn-sm btn-outline-secondary"
                                                href="{{ route('show_category', $item->Cate->slug_name) }}">
                                                {{ $item->Cate->name }}
                                            </a>
                                            <a class="btn btn-sm btn-outline-dark"
                                                href="{{ route('show_city', $item->City->slug_city) }}">
                                                {{ $item->City->city }}
                                            </a>
                                        </p>
                                        <p class="card-text">
                                            <i class="fas fa-bed"></i> {{ $item->rooms }}
                                            <i class="fas fa-shower"></i> {{ $item->bathrooms }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                @endif
            @empty
            @endforelse



            <hr class="featurette-divider">

            <!-- /END THE FEATURETTES -->
        </div>
    </main>
@endsection
@section('scripts')
    <script>
        $(document).ready(function() {
            const myCarousel = new Carousel(document.querySelector("#cat_cara"), {});
            // $(document).('.carousal__button').addClass(' text-white shadow-lg');
        });
    </script>
@endsection
