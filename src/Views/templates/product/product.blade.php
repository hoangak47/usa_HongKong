@extends('layout')
@section('content')
    <div class="max-width py-3">
        <div class="title-detail">
            <h1>{{ $titleMain }}</h1>
        </div>
        <div class="sort-select" x-data="{ open: false }">
            <p class="click-sort" @click="open = ! open">{{ __('web.sapxep') }}: <span
                    class="sort-show">{{ __('web.moinhat') }}</span></p>
            <div class="sort-select-main sort" x-show="open">
                <p><a data-sort="1"
                        class="{{ Request()->sort == 1 || empty(Request()->sort) ? 'check' : '' }}"><i></i>{{ __('web.moinhat') }}</a>
                </p>
                <p><a data-sort="2" class="{{ Request()->sort == 2 ? 'check' : '' }}"><i></i>{{ __('web.cunhat') }}</a></p>
                <p><a data-sort="3"
                        class="{{ Request()->sort == 3 ? 'check' : '' }}"><i></i>{{ __('web.giacaodenthap') }}</a></p>
                <p><a data-sort="4"
                        class="{{ Request()->sort == 4 ? 'check' : '' }}"><i></i>{{ __('web.giathapdencao') }}</a></p>
                <input type="hidden" name="url" class="url-search" value="{{ Request()->url() }}" />
            </div>
        </div>
        <div class="flex-product-main">
            <div class="right-product w-100">
                @if (!empty($product))
                    <div class="row">
                        @foreach ($product as $v)
                            <div class="col-lg-3 col-md-4 col-sm-6 col-6 mb-4">
                                @component('component.itemProduct', ['product' => $v])
                                @endcomponent
                            </div>
                        @endforeach
                    </div>
                @endif
                {{-- {!! $product->appends(request()->query())->links() !!} --}}
                {!! $product->appends(request()->query())->onEachSide(3)->links() !!}
            </div>
        </div>
    </div>
@endsection
