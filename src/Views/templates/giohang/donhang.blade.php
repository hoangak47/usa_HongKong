@extends('layout')
@section('content')
<div class="max-width py-3">
    <div class="wrap-content padding-top-bottom">
        @if ($dsdonhang->isNotEmpty())
        <h1 class="title-main">Danh sách đơn hàng</h1>
        <div class="info_dh order-box__main--list">
            <div class="list_dh">
                @foreach($dsdonhang as $k => $vlist)
                    @php
                        $infoOrder = $vlist['order_detail'];
                    @endphp
                    <div class="main-box">
                        <div class="main-box__left">
                            <div class="main-box__left--time">{{ \Carbon\Carbon::createFromFormat('Y-m-d H:i:s',$vlist['created_at'])->format('d/m/Y H:i:s') }}</div>
                            <div class="main-box__left--code">{{$vlist['code']}}</div>
                        </div>
                        <div class="main-box__right">
                            <div class="main-box__right--price">
                                <span>{{ Func::formatMoney($vlist['total_price']) }}</span>
                                <span class="status">{{ Func::showName('order_status', $vlist['order_status'], 'namevi') }}</span>
                                <span class="delete del-procart1" data-rowId="{{$vlist['id']}}">Xóa đơn hàng</span>
                            </div>
                            <div class="main-box__right--status">
                                <button type="button" class="more">Chi tiết</button>
                            </div>
                        </div>
                        <div class="card w-100 card-primary card-outline text-sm mt-4">
                            <div class="card-header">
                                <h3 class="card-title">Chi tiết đơn hàng</h3>
                            </div>

                            <div class="list-procart">
                                <div class="procart procart-label d-flex align-items-start justify-content-between">
                                    <div class="pic-procart ">Hình ảnh</div>
                                    <div class="info-procart">Tên sản phẩm</div>
                                    <div class="quantity-procart ">Số lượng</div>
                                    <div class="price-procart ">Tổng tiền</div>
                                </div>
                                @if (empty($infoOrder))
                                <div>
                                    <p colspan="100" class="text-center">Không có dữ liệu</p>
                                </div>
                                @else

                                @php $num = 0 ; @endphp
                                @foreach ($infoOrder as $k => $v)
                                @php
                                $num = $num + 1;
                                $options = $v['options'];
                                $photo = $v['options']['photo'] ?? '';
                                $itemProduct = $v['options']['itemProduct'];
                                @endphp
                                    <div class="procart flex items-start justify-between">
                                        <div class="pic-procart">
                                            <a title="{{ $v['name'] }}">
                                                <img class="img-preview"
                                                    onerror="this.src='{{thumbs('thumbs/50x50x1/assets/images/noimage.png')}}';"
                                                    src="{{ assets_photo('product','50x50x1',$photo,'thumbs') }}"
                                                    alt="{{ $v['name'] }}" title="{{ $v['name'] }}" />
                                            </a>
                                        </div>
                                        <div class="info-procart">
                                            <h3 class="name-procart"><a href="javascript:void(0);">{{ $v['name'] }}</a></h3>
                                            @foreach ($options['properties'] as $kp => $vp)
                                                <p class="text-proper mb-1">
                                                    @if($kp==1) Màu sắc: @else Size: @endif
                                                    {{ $vp['namevi'] }}
                                                </p>
                                            @endforeach
                                        </div>
                                        <div class="quantity-procart">{{ $v['qty'] }}</div>
                                        <div class="price-procart">
                                            <div class="price-cart-detail">
                                                @if ($itemProduct['sale_price'])
                                                <span
                                                    class="price-new-cart">{{ Func::formatMoney($itemProduct['sale_price'] * $v['qty']) }} / {{$itemProduct['dvvi']}}</span>
                                                    <span class="price-old-cart">{{ Func::formatMoney($itemProduct['regular_price'] * $v['qty']) }} / {{$itemProduct['dvvi']}}</span>
                                                @else
                                                <span class="price-new-cart">{{ Func::formatMoney($itemProduct['regular_price'] * $v['qty']) }} / {{$itemProduct['dvvi']}}</span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                                @endif
                            </div>
                            <div class="money-procart">
                                <div class="total-procart flex items-center justify-between">
                                    <p>Tổng giá trị đơn hàng: </p>
                                    <p class="total-price load-price-total">{{ Func::formatMoney($vlist['total_price']) }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        {{--@else
        <div class="alert alert-warning w-100" role="alert">
            <strong>Vui lòng <a href="member/login"> đăng nhập </a> để xem lịch sử đơn hàng</strong>
        </div>--}}
        @endif
    </div>
</div>
@endsection