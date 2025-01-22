@if ($other == 1)
    @if (!empty($productAjax))
        <div class="p-relative">
            <div class="row">
                @foreach ($productAjax as $v)
                    <div class="col-lg-3 col-md-4 col-sm-6 col-6 mb-4">
                        @component('component.itemProduct', ['product' => $v])
                        @endcomponent
                    </div>
                @endforeach
            </div>
            {!! $productAjax->appends(request()->query())->links('pagination.pagin-ajax') !!}
        </div>
    @endif
@elseif($other == 2)
    @if (!empty($productAjax))
        <div class="p-relative">
            <div class="row">
                @foreach ($productAjax as $v)
                    <div class="col-lg-3 col-md-4 col-sm-6 col-6 mb-4">
                        @component('component.itemProduct', ['product' => $v])
                        @endcomponent
                    </div>
                @endforeach
            </div>
            <div class="xemthem-pro">
                <a class="text-decoration-none" href="{{ $slug }}">Xem tất cả</a>
            </div>
        </div>
    @endif
@elseif($other == 3)
    @if (!empty($productAjax))
        <div class="p-relative" id="product-list-{{ $section }}">
            <div class="row">
                @foreach ($productAjax as $v)
                    <div class="col-lg-3 col-md-4 col-sm-6 col-6 mb-4">
                        @component('component.itemProduct', ['product' => $v])
                        @endcomponent
                    </div>
                @endforeach
                @if ($currentPage < $lastPage)
                    <div class="col-12 button">
                        <button id="load-more" data-section="{{ $section }}" data-page="{{ $currentPage + 1 }}"
                            class="btn btn-primary">Xem thêm</button>
                    </div>
                @endif
            </div>
        </div>
    @endif
@else
    <div class="alert alert-warning w-100" role="alert">
        <strong>{{ __('web.dangcapnhatdulieu') }}</strong>
    </div>
@endif
