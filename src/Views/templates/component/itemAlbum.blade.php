@php $lazy = $lazy ?? true; // Mặc định là true nếu không truyền $lazy
@endphp
<div class="box-cont" >
    <div class="picture">
        <a class="img block " href="{{ url('slugweb',['slug'=>$product['slug']]) }}" title="{{ $product['name'.$lang] }}">
            <img class="w-full {{ $lazy ? 'lazy' : '' }}" onerror="this.src='{{thumbs('thumbs/'.config('type.product.'.$product['type'].'.images.photo.thumb').'/assets/images/noimage.png.webp')}}';"
                @if ($lazy)
                    data-src="{{ assets_photo('product', config('type.product.' . $product['type'] . '.images.photo.thumb'), $product['photo'], 'thumbs') }}"
                @else
                    src="{{ assets_photo('product', config('type.product.' . $product['type'] . '.images.photo.thumb'), $product['photo'], 'thumbs') }}"
                @endif
             alt="{{ $product['name'.$lang] }}">
        </a>
    </div>
    <h3 class="name mb-0 text-center">
        <a class="text-split text-decoration-none" href="{{ url('slugweb',['slug'=>$product['slug']]) }}" title="{{ $product['name'.$lang] }}">{{ $product['name'.$lang] }}</a>
    </h3>
</div>