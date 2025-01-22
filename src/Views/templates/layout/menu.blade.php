<div class="menu">
    <ul class="ulmn">
        <li class="nav-item">
            <a class="transition {{ ($com ?? ' ') == 'trang-chu' ? 'active' : '' }}" href=""
                title="{{ $setting['name' . $lang] . '-' . __('web.home') }}">{{ __('web.home') }}</a>
        </li>
        <li class="nav-item">
            <a class="transition {{ ($com ?? '') == 'gioi-thieu' ? 'active' : '' }} " href="{{ url('gioi-thieu') }}"
                title="{{ $setting['name' . $lang] . '-' . __('web.gioithieu') }}">{{ __('web.gioithieu') }}
            </a>
        </li>
        <li class="nav-item">
            <a class="transition {{ ($com ?? '') == 'san-pham' ? 'active' : '' }} " href="{{ url('san-pham') }}"
                title="{{ $setting['name' . $lang] . '-' . __('web.sanpham') }}">{{ __('web.sanpham') }}
            </a>
            @if ($listProductMenu->isNotEmpty())
                <span class="btn-dropdown-menu"><i class="fa fa-angle-right"></i></span>
                <ul class="sub-menu none level0">
                    @foreach ($listProductMenu ?? [] as $vlist)
                        <li>
                            <a class="transition " href="{{ url('slugweb', ['slug' => $vlist['slug']]) }}"
                                title="{{ __('web.sanpham') . '-' . $vlist['name' . $lang] }}">{{ $vlist['name' . $lang] }}
                            </a>
                            @if ($vlist->getCategoryCats->isNotEmpty())
                                <span class="btn-dropdown-menu"><i class="fa fa-angle-right"></i></span>
                                <ul class="sub-menu none level1">
                                    @foreach ($vlist->getCategoryCats ?? [] as $vcat)
                                        <li>
                                            <a class="transition "
                                                href="{{ url('slugweb', ['slug' => $vcat['slug']]) }}"
                                                title="{{ __('web.sanpham') . '-' . $vcat['name' . $lang] }}">{{ $vcat['name' . $lang] }}
                                            </a>
                                            @if ($vcat->getCategoryItems->isNotEmpty())
                                                <span class="btn-dropdown-menu"><i class="fa fa-angle-right"></i></span>
                                                <ul class="sub-menu none level2">
                                                    @foreach ($vcat->getCategoryItems ?? [] as $vitem)
                                                        <li>
                                                            <a class="transition "
                                                                href="{{ url('slugweb', ['slug' => $vitem['slug']]) }}"
                                                                title="{{ __('web.sanpham') . '-' . $vitem['name' . $lang] }}">{{ $vitem['name' . $lang] }}</a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            @endif
                                        </li>
                                    @endforeach
                                </ul>
                            @endif
                        </li>
                    @endforeach
                </ul>
            @endif
        </li>
        <li class="nav-item">
            <a class="transition {{ ($com ?? '') == 'doitac' ? 'active' : '' }} "
                href="{{ url('doitac') }}"
                title="{{ $setting['name' . $lang] . '-' . __('web.doitac') }}">{{ __('web.doitac') }}
            </a>
        </li>
        <li class="nav-item">
            <a class="transition {{ ($com ?? '') == 'tin-tuc-kien-thuc' ? 'active' : '' }} " href="{{ url('tin-tuc-kien-thuc') }}"
                title="{{ $setting['name' . $lang] . '-' . __('web.tintuckienthuc') }}">{{ __('web.tintuckienthuc') }}
            </a>
        </li>
        <li class="nav-item">
            <a class="transition {{ ($com ?? '') == 'tuyen-dung' ? 'active' : '' }} " href="{{ url('tuyen-dung') }}"
                title="{{ $setting['name' . $lang] . '-' . __('web.tuyendung') }}">{{ __('web.tuyendung') }}
            </a>
        </li>
        <li class="nav-item">
            <a class="transition {{ ($com ?? '') == 'lien-he' ? 'active' : '' }}" href="{{ url('lien-he') }}"
                title="{{ $setting['name' . $lang] . '-' . __('web.lienhe') }}">{{ __('web.lienhe') }}
            </a>
        </li>
    </ul>
    <div class="search-menu">
        <p class="icon-search-menu transition"><i class="fa-regular fa-magnifying-glass"></i></p>
        <div class="search-grid w-clear">
            <input type="text" name="keyword" id="keyword" placeholder="{{ __('web.timkiem') }}"
                onkeypress="doEnter(event,'keyword');"
                value="{{ !empty($_GET['keyword']) ? $_GET['keyword'] : '' }}" />
            <p onclick="onSearch('keyword');"><i class="fa-solid fa-magnifying-glass"></i></p>
        </div>
    </div>
</div>
