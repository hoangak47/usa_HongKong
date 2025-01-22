<div class="slideshow below-nav">
    <div class="wrap-content d-flex flex-wrap justify-content-between">
        <div class="left-slide p-relative">
            <div class="owl-page owl-carousel owl-theme" data-items="screen:0|items:1" data-rewind="1" data-autoplay="1"
                data-loop="0" data-lazyload="0" data-mousedrag="0" data-touchdrag="0" data-smartspeed="800"
                data-autoplayspeed="800" data-autoplaytimeout="5000" data-dots="0"
                data-animations="animate__fadeInDown, animate__backInUp, animate__rollIn, animate__backInRight, animate__zoomInUp, animate__backInLeft, animate__rotateInDownLeft, animate__backInDown, animate__zoomInDown, animate__fadeInUp, animate__zoomIn"
                data-nav="1" data-navcontainer=".control-slideshow">
                @foreach ($slider as $v)
                    <div class="slideshow-item block" owl-item-animation>
                        <a class="slideshow-image " href="{{ $v['link'] }}" target="_blank"
                            title="{{ $v['name'] }}">
                            <picture>
                                <source media="(max-width: 500px)"
                                    srcset="{{ assets_photo('photo', config('type.photo.' . $v['type'] . '.thumb2'), $v['photo'], 'thumbs') }}">
                                <img class="w-100" width="{{ config('type.photo.' . $v['type'] . '.width') }}"
                                    height="{{ config('type.photo.' . $v['type'] . '.height') }}"
                                    onerror="this.src='{{ thumbs('thumbs/' . config('type.photo.' . $v['type'] . '.thumb') . '/assets/images/noimage.png') }}';"
                                    src="{{ assets_photo('photo', config('type.photo.' . $v['type'] . '.thumb'), $v['photo'], 'thumbs') }}"
                                    alt="{{ $v['name' . $lang] }}" title="{{ $v['name' . $lang] }}" />
                            </picture>
                        </a>
                    </div>
                @endforeach
            </div>
            <div class="control-slideshow control-owl transition"></div>
        </div>
        <div class="right-slide">
            <div class="slick-slideqc">
                @foreach ($sliderqc as $v)
                    <div class="slick-item-slideqc">
                        <div class="slideqc-item">
                            <a class="slideqc-image" href="{{ $v['link'] }}" target="_blank"
                                title="{{ $v['name'.$lang] }}">
                                <img class="w-100" width="{{ config('type.photo.' . $v['type'] . '.width') }}"
                                    height="{{ config('type.photo.' . $v['type'] . '.height') }}"
                                    onerror="this.src='{{ thumbs('thumbs/' . config('type.photo.' . $v['type'] . '.thumb') . '/assets/images/noimage.png.webp') }}';"
                                    src="{{ assets_photo('photo', config('type.photo.' . $v['type'] . '.thumb'), $v['photo'], 'thumbs') }}"
                                    alt="{{ $v['name' . $lang] }}" />
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
