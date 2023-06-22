{{-- Banner --}}
{{--
    <section class="banner">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                @foreach ($slider as $key => $slider)
                    <li data-target="#myCarousel" data-slide-to="{{ $key }}"
                        class="{{ $key == 0 ? 'active' : '' }}"></li>
                @endforeach
            </ol>
            <div class="carousel-inner">
                @foreach ($slider as $key => $slide)
                    <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                        <img class="first-slide" src="{{ asset($slider->image) }}"  alt="{{ $slide->title }}">

                        <div class="slider-bg"></div>
                    </div>
                @endforeach
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="fa fa-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="fa fa-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section> --}}

{{-- End Banner --}}
