@if (device() == 'mobile')
    @php
        $bottom = $opt['mobile']['bottom'] ?? '';
        $left = !empty($opt['mobile']['left']) ? $opt['mobile']['left'] . 'px' : '';
        $right = !empty($opt['mobile']['right']) ? $opt['mobile']['right'] . 'px' : '';
    @endphp
@else
    @php
        $bottom = $opt['destop']['bottom'] ?? '';
        $left = !empty($opt['destop']['left']) ? $opt['destop']['left'] . 'px' : '';
        $right = !empty($opt['destop']['right']) ? $opt['destop']['right'] . 'px' : '';
    @endphp
@endif

@php
    $background = $opt['background'] ?? '';
    $backgroundText = $opt['background-text'] ?? '';
    $color = $opt['color'] ?? '';
    $location = !empty($left) ? 'left' : 'right';
    $hotline = explode('-', $val['hotlinevi']);
    $photo = upload('photo', $val['photo']);
    $destop = !empty($opt['destop']['device']) && device() == 'destop' ? true : false;
    $mobile = !empty($opt['mobile']['device']) && device() == 'mobile' ? true : false;
@endphp

@if (!empty($destop) || !empty($mobile))
    <div id="hotline" class="hotline2" style="--bottom: {{ $bottom }}px;--left: {{ $left }};--right: {{ $right }};">
        @foreach ($hotline as $hotline)
            <a class="btn-phone btn-frame text-decoration-none" rel="nofollow" href="tel:{{ $hotline }}" style="--background: #{{ $background }};">
                <div class="animated infinite zoomIn kenit-alo-circle"></div>
                <div class="animated infinite pulse kenit-alo-circle-fill"></div>
                <i><img onerror="this.src='assets/images/noimage.png';" src="{{ $photo }}" alt="hotline" title="hotline" height="35" width="35" /></i>
            </a>
        @endforeach
    </div>
    @push('styles')        <link href="assets/css/hotline.css" rel="stylesheet">    @endpush

    @push('scripts')        <script type="text/javascript">            $('#hotline').show(500);        </script>
    @endpush
@endif
