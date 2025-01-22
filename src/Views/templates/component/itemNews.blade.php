@php
    $lazy = $lazy ?? true; // Mặc định là true nếu không truyền $lazy
@endphp
<div class="box-cont">
    <a class="img card-image block overflow-hidden " href="{{ url('slugweb', ['slug' => $news->slug]) }}"
        title="{{ $news['name' . $lang] }}">
        <img class="w-full {{ $lazy ? 'lazy' : '' }}"
            onerror="this.src='{{ thumbs('thumbs/' . config('type.news.' . $news['type'] . '.images.photo.thumb') . '/assets/images/noimage.png.webp') }}';"
            width="{{ config('type.news.' . $news['type'] . '.images.photo.width') }}"
            height="{{ config('type.news.' . $news['type'] . '.images.photo.height') }}"
            @if ($lazy) data-src="{{ assets_photo('news', config('type.news.' . $news['type'] . '.images.photo.thumb'), $news->photo, 'thumbs') }}"
            @else
                src="{{ assets_photo('news', config('type.news.' . $news['type'] . '.images.photo.thumb'), $news->photo, 'thumbs') }}"
            @endif
            alt="{{ $news['name' . $lang] }}">
    </a>
    <div class="tttt">
        <h3><a class="ten text-split text-decoration-none" href="{{ url('slugweb', ['slug' => $news->slug]) }}"
                title="{{ $news['name' . $lang] }}">{{ $news['name' . $lang] }}</a></h3>
        {!! $slot !!}
    </div>
</div>
