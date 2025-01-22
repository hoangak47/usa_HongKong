<footer>
    <div class="footer-article padding-top-bottom">
        <div class="wrap-content flex flex-wrap items-start justify-between">
            <div class="footer-news ">
                <a class="logo-ft" href="">
                    <img width="{{ config('type.photo.' . $logoPhotoFooter['type'] . '.width') }}"
                        height="{{ config('type.photo.' . $logoPhotoFooter['type'] . '.height') }}"
                        src="{{ assets_photo('photo', config('type.photo.' . $logoPhotoFooter['type'] . '.thumb'), $logoPhotoFooter->photo, 'thumbs') }}"
                        alt="{{ $setting['name' . $lang] }}">
                </a>
                <div class="info-footer">{!! Func::decodeHtmlChars($footer['content' . $lang]) !!}</div>
            </div>
            <div class="footer-news ">
                <div class="title-footer">Chính sách hỗ trợ</div>
                <ul class="footer-ul p-0 m-0 list-none">
                    @foreach ($policy as $v)
                        <li class="mb-2 last:mb-0">
                            <a class="text-black inline-block text-[15px]"
                                href="{{ url('slugweb', ['slug' => $v['slug']]) }}">{{ $v['name' . $lang] }}</a>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="footer-news">
                <div class="title-footer">fanpage</div>
                @component('component.fanpage', ['fanpage' => $optSetting['fanpage']])
                @endcomponent
            </div>
        </div>
    </div>
    <div class="footer-powered">
        <div class="wrap-content py-[15px] ">
            <p class="copyright text-center mb-0">
                Copyright © <span>{{ $setting['name' . $lang] }}</span>. Designed by <span>NiNa</span>
            </p>
        </div>
    </div>
    @component('component.maps', ['maps' => $optSetting['coords_iframe']])
    @endcomponent
</footer>
