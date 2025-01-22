@php
    $lazy = $lazy ?? true;
@endphp
<div class="product">
    <div class="pic-product">
        <a class="scale-img img block" href="{{ url('slugweb', ['slug' => $product['slug']]) }}"
            title="{{ $product['name' . $lang] }}">
            <img class="w-100 {{ $lazy ? 'lazy' : '' }}"
                onerror="this.src='{{ thumbs('thumbs/' . config('type.product.' . $product['type'] . '.images.photo.thumb') . '/assets/images/noimage.png.webp') }}';"
                width="{{ config('type.product.' . $product['type'] . '.images.photo.width') }}"
                height="{{ config('type.product.' . $product['type'] . '.images.photo.height') }}"
                @if ($lazy)
                    data-src="{{ assets_photo('product', config('type.product.' . $product['type'] . '.images.photo.thumb'), $product['photo'], 'watermarks') }}"
                @else
                    src="{{ assets_photo('product', config('type.product.' . $product['type'] . '.images.photo.thumb'), $product['photo'], 'watermarks') }}"
                @endif
                alt="{{ $product['name' . $lang] }}">
        </a>
    </div>
    <h3 class="name-product">
        <a class="text-split text-decoration-none" href="{{ url('slugweb', ['slug' => $product['slug']]) }}"
            title="{{ $product['name' . $lang] }}">{{ $product['name' . $lang] }}</a>
    </h3>
    <div class="hotline-product">
        <a class="text-decoration-none" target="_blank" href="tel:{{   preg_replace('/[^0-9]/', '', $optSetting['hotline'])}}">
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"><g fill="currentColor"><path d="M22 12A10 10 0 0 0 12 2v2a8 8 0 0 1 7.391 4.938A8 8 0 0 1 20 12zM2 10V5a1 1 0 0 1 1-1h5a1 1 0 0 1 1 1v4a1 1 0 0 1-1 1H6a8 8 0 0 0 8 8v-2a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1h-5C7.373 22 2 16.627 2 10"/><path d="M17.543 9.704A6 6 0 0 1 18 12h-1.8A4.2 4.2 0 0 0 12 7.8V6a6 6 0 0 1 5.543 3.704"/></g></svg>
            <span>
                {{ __('web.lienhe') }}
            </span>
        </a>
    </div>
</div>
