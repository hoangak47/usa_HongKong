<div class="navigation">
    <div class="wrap-content">
        <div class="navigation__main">
            <div class="menu-mobile-btn block lg:hidden">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <div class="wrap-menu">
                @include('layout.menu')
            </div>
        </div>
    </div>
    <div class="opacity-menu"></div>
    <div class="header-left-fixwidth">
        <div class="section wrap-header">
            <a class="logos-menu" href="">
                <img width="{{ config('type.photo.' . $logoPhoto['type'] . '.width') }}"
                    height="{{ config('type.photo.' . $logoPhoto['type'] . '.height') }}"
                    src="{{ assets_photo('photo', config('type.photo.' . $logoPhoto['type'] . '.thumb'), $logoPhoto->photo, 'thumbs') }}"
                    alt="{{ $setting['name' . $lang] }}">
            </a>
            <div class="nav-menu">

            </div>
        </div>
    </div>
</div>