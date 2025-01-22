@extends('layout')
@section('content')

    <div x-data>
        <div class="wrap-main my-[20px] mx-auto max-w-[1200px] w-[calc(100%_-_20px)]">
            <div class="grid-pro-detail">
                <div class="left-pro-detail">
                    <div class="slick_photo1  overflow-hidden">
                        <a id="Zoom-1" class="MagicZoom"
                            data-options="zoomMode: true; hint: off; rightClick: true; selectorTrigger: click; expandCaption: false; history: false;"
                            href="{{ assets_photo('product', '', $rowDetail['photo']) }}"
                            title="{{ $rowDetail['name' . $lang] }}">
                            <img class="" width="{{ config('type.product.' . $rowDetail['type'] . '.images.photo.width') }}" height="{{ config('type.product.' . $rowDetail['type'] . '.images.photo.height') }}"
                                onerror="this.src='{{ thumbs('thumbs/' . config('type.product.' . $rowDetail['type'] . '.images.photo.thumb_detail') . '/assets/images/noimage.png.webp') }}';"
                                src="{{ assets_photo('product', config('type.product.' . $rowDetail['type'] . '.images.photo.thumb_detail'), $rowDetail['photo'], 'watermarks') }}"
                                alt="{{ $rowDetail['name' . $lang] }}">
                        </a>
                    </div>
                    <div class="album-product my-2 mt-3">
                        <div class="slick in-page" data-dots="0" data-infinite="1" data-arrows="0" data-autoplay='1'
                            data-slidesDefault="4:1" data-lg-items='4:1' data-md-items='4:1' data-sm-items='4:1'
                            data-xs-items="4:1" data-vertical="0">
                            <a class="thumb-pro-detail border-[1px] rounded-[8px]  mx-2" data-zoom-id="Zoom-1"
                                href="{{ assets_photo('product', '', $rowDetail['photo']) }}"
                                title="{{ $rowDetail['name' . $lang] }}"
                                data-image="{{ assets_photo('product', config('type.product.' . $rowDetail['type'] . '.images.photo.thumb_detail'), $rowDetail['photo'], 'watermarks') }}"><img
                                    class=" !mb-0 !pb-0 !border-0" width="{{ config('type.product.' . $rowDetail['type'] . '.images.photo.thumb.width') }}" height="{{ config('type.product.' . $rowDetail['type'] . '.images.photo.thumb.height') }}"
                                    onerror="this.src='{{ thumbs('thumbs/' . config('type.product.' . $rowDetail['type'] . '.images.photo.thumb_detail') . '/assets/images/noimage.png.webp') }}';"
                                    src="{{ assets_photo('product', config('type.product.' . $rowDetail['type'] . '.images.photo.thumb_detail'), $rowDetail['photo'], 'watermarks') }}"
                                    alt="{{ $rowDetail['name' . $lang] }}"></a>
                            @foreach ($rowDetailPhoto as $v)
                                <a class="thumb-pro-detail border-[1px] rounded-[8px]  mx-2" data-zoom-id="Zoom-1"
                                    href="{{ assets_photo('product', '', $v['photo']) }}"
                                    title="{{ $rowDetail['name' . $lang] }}"
                                    data-image="{{ assets_photo('product', config('type.product.' . $rowDetail['type'] . '.images.photo.thumb_detail'), $v['photo'], 'watermarks') }}"><img
                                        class=" !mb-0 !pb-0 !border-0" width="{{ config('type.product.' . $rowDetail['type'] . '.images.photo.thumb.width') }}" height="{{ config('type.product.' . $rowDetail['type'] . '.images.photo.thumb.height') }}"
                                        onerror="this.src='{{ thumbs('thumbs/' . config('type.product.' . $rowDetail['type'] . '.images.photo.thumb_detail') . '/assets/images/noimage.png.webp') }}';"
                                        src="{{ assets_photo('product', config('type.product.' . $rowDetail['type'] . '.images.photo.thumb_detail'), $v['photo'], 'watermarks') }}"
                                        alt="{{ $rowDetail['name' . $lang] }}"></a>
                            @endforeach
                        </div>
                    </div>
                </div>

                <div class="right-pro-detail">
                    <div class="title-detail">
                        <h1>{{ $rowDetail['name' . $lang] }}</h1>
                    </div>
                    <ul class="attr-pro-detail">
                        <li class="flex mb-2 items-baseline">
                            <label class="attr-label-pro-detail font-medium mr-[5px]">{{ __('web.luotxem') }}:</label>
                            <div class="attr-content-pro-detail"><span>{{ $rowDetail['view'] }}</span>
                            </div>
                        </li>
                        @if (!empty($rowDetail['code']))
                            <li class="flex mb-2 items-baseline">
                                <label class="attr-label-pro-detail font-medium mr-[5px]">{{ __('web.code') }}:</label>
                                <div class="attr-content-pro-detail"><span>{{ $rowDetail['code'] }}</span>
                                </div>
                            </li>
                        @endif
                        <li class="flex mb-2 items-baseline">
                            <label class="attr-label-pro-detail font-medium mr-[5px]">{{ __('web.gia') }}:</label>
                            <div class="attr-content-pro-detail">
                                @if ($rowDetail['sale_price'])
                                    <span
                                        class="price-new-pro-detail">{{ Func::formatMoney($rowDetail['sale_price']) }}</span>
                                    <span
                                        class="price-old-pro-detail">{{ Func::formatMoney($rowDetail['regular_price']) }}</span>
                                @else
                                    <span
                                        class="price-new-pro-detail">{{ $rowDetail['regular_price'] ? Func::formatMoney($rowDetail['regular_price']) : __('web.lienhe') }}</span>
                                @endif
                            </div>
                        </li>
                    </ul>
                    @if (config('type.order'))
                    <div class="cart-pro-detail">
                        <div class="attr-content-pro-detail d-block">
                            <div class="quantity-pro-detail">
                                <span class="quantity-minus-pro-detail">-</span>
                                <input type="text" class="qty-pro !outline-none !shadow-none !ring-0" min="1"
                                    value="1" readonly="">
                                <span class="quantity-plus-pro-detail">+</span>
                            </div>
                        </div>
                        <a class="transition addcart text-decoration-none addnow" data-id="{{ $rowDetail['id'] }}"
                            data-action="addnow">{{ __('web.themvaogiohang') }}</a>
                    </div>
                    <div class="cart-pro-detail">
                        <a class="transition flex-1 addcart text-decoration-none buynow" data-id="{{ $rowDetail['id'] }}"
                            data-action="buynow">
                            <span>{{ __('web.muangay') }}</span>
                            <span>Gọi điện xác nhận và giao hàng tận nơi</span>
                        </a>
                    </div>
                    @endif
                    @if (!empty($rowDetail['desc' . $lang]))
                        <div>{!! Func::decodeHtmlChars($rowDetail['desc' . $lang]) !!}</div>
                    @endif
                </div>
            </div>

            <div class="tabs-pro-detail mt-3 mb-3">
                <ul class="nav nav-tabs" id="tabsProDetail" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="info-pro-detail-tab" data-bs-toggle="tab" href="#info-pro-detail"
                            role="tab">{{ __('web.thongtinsanpham') }}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="commentfb-pro-detail-tab" data-bs-toggle="tab" href="#commentfb-pro-detail"
                            role="tab">{{ __('web.binhluan') }}</a>
                    </li>
                </ul>
                <div class="tab-content pt-4 pb-4" id="tabsProDetailContent">
                    <div class="tab-pane fade show active" id="info-pro-detail" role="tabpanel">
                        <div class="baonoidung chitietsanpham mt-4" x-data="{ expanded: false }">
                            <div class="info_nd content_down he-first" x-bind:class="expanded ? 'heigt-auto' : ''"
                                x-collapse.min.100px>
                                {!! Func::decodeHtmlChars($rowDetail['content' . $lang]) !!}
                            </div>
                            <button type="button" @click="expanded = ! expanded"
                                class="mx-auto block active:!bg-[#5172fd] active:!border-[#5172fd] active:!text-white mt-4 mb-4 !border-[1px] border-solid border-gray-400 bg-white text-black !shadow-none !ring-0 !outline-none rounded-[50px] px-[15px] py-[7px]">
                                <span x-text="(!expanded)?'{{ __('web.xemthem') }}':'{{ __('web.thugon') }}'"
                                    class="font-medium"></span>
                            </button>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="commentfb-pro-detail" role="tabpanel">
                        <div class="fb-comments" data-href="{!! Func::getCurrentPageURL() !!}" data-numposts="3"
                            data-colorscheme="light" data-width="100%"></div>
                    </div>
                </div>
            </div>

            @if ($product->isNotEmpty())
                <div class="pad-bottom">
                    <div class="title-main mt-[40px]"><span>{{ __('web.sanphamcungloai') }}</span></div>
                    <div class="row-prod-flt -mx-[5px]">
                        <div class="slick in-page" data-dots="0" data-infinite="0" data-responsive="1" data-arrows="0"
                            data-autoplay='1' data-slidesDefault="4:1" data-lg-items='4:1' data-md-items='3:1'
                            data-sm-items='2:1' data-xs-items="2:1" data-vertical="0">
                            @foreach ($product as $v)
                                <div class="col-slick px-[5px]">
                                    @component('component.itemProduct', ['product' => $v,'lazy'=>false])
                                    @endcomponent
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </div>
    {{-- @component('component.detailProduct', [
    'rowDetail' => $rowDetail ?? [],
    'rowDetailPhoto' => $rowDetailPhoto ?? [],
    'rowDetailPhoto1' => $rowDetailPhoto1 ?? [],
])
    @endcomponent --}}
@endsection

@push('styles')
    <link rel="stylesheet" href="@asset('assets/magiczoomplus/magiczoomplus.css')">
@endpush
@push('scripts')
    <script src="@asset('assets/magiczoomplus/magiczoomplus.js')"></script>
@endpush
