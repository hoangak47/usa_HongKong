@extends('layout')
@section('content')
    <h1 class="hidden">{!! Seo::get('title') !!}</h1>
    @if (!empty($about))
        <div class="wrap-about padding-top-bottom">
            <div class="wrap-content d-flex flex-wrap justify-content-between">
                <div class="info_about">
                    <div class="list-title">
                        <div class="title_about">Về Chúng Tôi</div>
                        <h2 class="name_about">{{ $about['name' . $lang] }}</h2>
                    </div>
                    <div class="desc_about text-split">{!! Func::decodeHtmlChars($about['desc' . $lang]) !!}</div>
                    <a href="gioi-thieu" class="views hover_xemthem text-decoration-none">{{ __('web.xemthem') }}</a>
                </div>
                <div class="about_photo">
                    <div class="img">
                        <a class="block scale-img hover_sang2" href="gioi-thieu">
                            <img class="w-full"
                                onerror="this.src='{{ thumbs('thumbs/' . config('type.static.' . $about['type'] . '.images.photo.thumb') . '/assets/images/noimage.png.webp') }}';"
                                width="{{ config('type.static.' . $about['type'] . '.images.photo.width') }}"
                                height="{{ config('type.static.' . $about['type'] . '.images.photo.height') }}"
                                src="{{ assets_photo('news', config('type.static.' . $about['type'] . '.images.photo.thumb'), $about['photo'], 'thumbs') }}"
                                alt="{{ $about['name' . $lang] }}">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    @endif
    @if ($listProductNB->isNotEmpty())
        <div id="" class="product-list load-prolist padding-top-bottom other-product">
            <div class="wrap-content">
                <div class="title-main-home">
                    <h2>sản phẩm của chúng tôi</h2>
                    <span>{{ $slogan['name' . $lang] }}</span>
                </div>
                <div class="list-c2">
                    <div class="title-list-main click-product">
                        <span class="" data-url="{{ url('load-product') }}" data-paginate="8" data-other="2"
                            data-slug="san-pham" data-section="list" data-list="" data-eshow=".paging-prolist">tất
                            cả</span>
                        @foreach ($listProductNB as $k => $vlist)
                            <span class="" data-url="{{ url('load-product') }}" data-paginate="8" data-other="2"
                                data-slug="{{ $vlist['slug'] }}" data-section="list" data-list="{{ $vlist['id'] }}"
                                data-eshow=".paging-prolist">{{ $vlist['name' . $lang] }}</span>
                        @endforeach
                    </div>
                </div>
                <div class="paging-prolist"></div>
            </div>
        </div>
    @endif
    @if ($videoHome->isNotEmpty() || $newsHome->isNotEmpty())
        <div class="wrap-intro padding-top-bottom">
            <div class="wrap-content">
                <div class="title-main-home">
                    <h2>{{ __('web.tintuckienthuc') }}</h2>
                    <span>{{ $slogan['name'.$lang] }}</span>
                </div>
                <div class="row">
                    <div class="col-news">
                        @if ($newsHome->isNotEmpty())
                            <div class="slick-news">
                                <div class="slick in-page" data-dots="0" data-infinite="0" data-responsive="0"
                                    data-arrows="0" data-autoplay='0' data-slidesDefault="3:1" data-lg-items='3:1'
                                    data-md-items='2:1' data-sm-items='2:1' data-xs-items="2:1" data-vertical="1"
                                    data-verticalSwiping="1">
                                    @foreach ($newsHome as $v)
                                        <div class="slick-item-news">
                                            <div class="item_newshome">
                                                <div class="box-cont">
                                                    <a class="img card-image block overflow-hidden "
                                                        href="{{ url('slugweb', ['slug' => $v->slug]) }}"
                                                        title="{{ $v['name' . $lang] }}">
                                                        <img class="w-full"
                                                            onerror="this.src='{{ thumbs('thumbs/' . config('type.news.' . $v['type'] . '.images.photo.thumb') . '/assets/images/noimage.png.webp') }}';"
                                                            width="{{ config('type.news.' . $v['type'] . '.images.photo.width') }}"
                                                            height="{{ config('type.news.' . $v['type'] . '.images.photo.height') }}"
                                                            src="{{ assets_photo('news', config('type.news.' . $v['type'] . '.images.photo.thumb'), $v->photo, 'thumbs') }}"
                                                            alt="{{ $v['name' . $lang] }}">
                                                    </a>
                                                    <div class="tttt">
                                                        <div class="top-tttt">
                                                            <div class="time-tttt">
                                                                <span>{{ \Carbon\Carbon::parse($v->created_at)->format('d') }}</span>
                                                                <span>TH{{ \Carbon\Carbon::parse($v->created_at)->format('m') }}</span>
                                                            </div>
                                                            <h3>
                                                                <a class="ten text-split text-decoration-none"
                                                                    href="{{ url('slugweb', ['slug' => $v->slug]) }}"
                                                                    title="{{ $v['name' . $lang] }}">{{ $v['name' . $lang] }}</a>
                                                            </h3>
                                                        </div>
                                                        <div class="desc-news line-clamp-3 mt-1">{{ $v['desc' . $lang] }}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="col-video">
                        <div class="videohome-intro">
                            @php
                                $videoFirst = $videoHome->first();
                            @endphp
                            <div class="item-video">
                                <a class=" pic-video scale-img text-decoration-none" data-fancybox="video-gallery"
                                    href="{{ $videoFirst['link_video'] }}" title="{{ $videoFirst['name' . $lang] }}">
                                    <img onerror="this.src='thumbs/570x370x2/assets/images/noimage.png';"
                                        src="https://img.youtube.com/vi/{!! Func::getYoutube($videoFirst['link_video']) !!}/0.jpg"
                                        alt="{{ $videoFirst['name' . $lang] }}" />
                                </a>
                            </div>
                            <div class="div_hiden">
                                <div class="owl-page owl-carousel owl-theme owl-video"
                                    data-items="screen:0|items:2|margin:10,screen:425|items:2|margin:10,screen:575|items:3|margin:10,screen:767|items:3|margin:10,screen:991|items:3|margin:10,screen:1199|items:3|margin:10"
                                    data-rewind="1" data-autoplay="1" data-loop="0" data-lazyload="0" data-mousedrag="1"
                                    data-touchdrag="1" data-smartspeed="300" data-autoplayspeed="500"
                                    data-autoplaytimeout="3500" data-dots="0" data-nav="0"
                                    data-navcontainer=".control-video">
                                    @foreach ($videoHome as $k => $v)
                                        <div>
                                            <a class="item-video2 pic-video-2 scale-img text-decoration-none"
                                                data-fancybox="video-gallery" href="{{ $v['link_video'] }}"
                                                title="{{ $v['name' . $lang] }}">
                                                <img onerror="this.src='thumbs/160x120x2/assets/images/noimage.png';"
                                                    src="https://img.youtube.com/vi/{!! Func::getYoutube($v['link_video']) !!}/0.jpg"
                                                    alt="{{ $v['name' . $lang] }}" />
                                            </a>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif
    <div class="wrap-letter padding-top-bottom">
        <div class="wrap-content">
            <div class="box-cont-letter">
                <div class="title-main-home">
                    <h2>{{ __('web.dangkynhantin') }}</h2>
                    <span class="slogan-letter">Gửi thông tin của bạn để nhận thông tin ưu đãi từ chúng tôi</span>
                </div>
                <div class="form-letter">
                    <form class="form-newsletter validation-newsletter" novalidate="" method="POST"
                        action="{{ url('letter') }}" enctype="multipart/form-data">
                        <div class="col-letter">
                            <div class="newsletter-input">
                                <input type="text" class="form-control reset-token" id="fullname-newsletter"
                                    name="fullname" value="" placeholder="{{ __('web.hoten') }}" required="">
                            </div>
                            <div class="newsletter-input">
                                <input type="tel" class="form-control" id="phone-newsletter" name="phone"
                                    placeholder="{{ __('web.sodienthoai') }}" required="">
                            </div>
                            <div class="newsletter-input">
                                <input type="email" class="form-control" id="email-newsletter" name="email"
                                    placeholder="Email" required="">
                            </div>
                        </div>
                        <div class="col-letter">
                            <div class="newsletter-input1">
                                <textarea class="form-control" id="content-newsletter" name="content" placeholder="{{ __('web.noidung') }}"
                                    required></textarea>
                            </div>
                            <div class="newsletter-button">
                                <input type="submit" class="active:!bg-blue-500" name="submit-newsletter"
                                    value="{{ __('web.dangky') }}">
                                <input type="hidden" name="csrf_token" value="{{ csrf_token() }}">
                                <input type="hidden" name="recaptcha_response_newsletter"
                                    id="recaptchaResponseNewsletter" value="">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    @if ($doitac->isNotEmpty())
        <div class="wrap-partner padding-top-bottom">
            <div class="wrap-content">
                <div class="title-main-home">
                    <h2>đối tác của chúng tôi</h2>
                    <span>{{ $slogan['name'.$lang] }}</span>
                </div>
                <div class="owl-partner p-relative">
                    <div class="owl-page owl-carousel owl-theme"
                        data-items="screen:0|items:2|margin:10,screen:425|items:3|margin:10,screen:575|items:4|margin:10,screen:767|items:4|margin:10,screen:991|items:5|margin:10,screen:1199|items:6|margin:10"
                        data-rewind="1" data-autoplay="1" data-loop="0" data-lazyload="0" data-mousedrag="1"
                        data-touchdrag="1" data-smartspeed="500" data-autoplayspeed="3500" data-dots="0"
                        data-nav="0" data-navcontainer=".control-partner">
                        @foreach ($doitac as $v)
                            <div>
                                <a class="partner" href="{{ $v['link'] }}" target="_blank"
                                    title="{{ $v['name' . $lang] }}">
                                    <img onerror="this.src='{{ thumbs('thumbs/' . config('type.photo.' . $v['type'] . '.thumb') . '/assets/images/noimage.png.webp') }}';"
                                        src="{{ assets_photo('photo', config('type.photo.' . $v['type'] . '.thumb'), $v['photo'], 'thumbs') }}"
                                        alt="{{ $v['name' . $lang] }}">
                                </a>
                            </div>
                        @endforeach
                    </div>
                    <div class="control-partner control-owl transition"></div>
                </div>
            </div>
        </div>
    @endif
@endsection
