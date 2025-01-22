<div class="header above-nav z-100">
    <div class="header-top">
        <div class="wrap-content">
            <div class="cont-header-top d-flex flex-wrap justify-content-between align-items-center">
            <div class="slogan">
                <marquee behavior="" direction="">{{ $setting['name'.$lang] }}</marquee>
            </div>
            <ul class="social-header d-flex justify-content-between">
                @foreach ($social1 as $v)
                    <li class="mr-2">
                        <a href="{{ $v->link }}" rel="nofollow" target="_blank" class="block group">
                            <img class="transition-all group-hover:animate__bounceIn"
                                width="{{ config('type.photo.'.$v['type'].'.width') }}" height="{{ config('type.photo.'.$v['type'].'.height') }}"
                                src="{{ assets_photo('photo',config('type.photo.'.$v['type'].'.thumb'), $v->photo) }}" alt="{{ $v['name' . $lang] }}">
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="wrap-content">
            <div class="flex items-center justify-between">
                <div class="left-header">
                    <div class="logo">
                        <a class="logo-header " href="">
                            <img width="{{ config('type.photo.' . $logoPhoto['type'] . '.width') }}"
                                height="{{ config('type.photo.' . $logoPhoto['type'] . '.height') }}"
                                src="{{ assets_photo('photo', config('type.photo.' . $logoPhoto['type'] . '.thumb'), $logoPhoto->photo, 'thumbs') }}"
                                alt="{{ $setting['name' . $lang] }}">
                        </a>
                    </div>
                </div>
                <div class="right-header">
                    <div class="address-header">
                        <span class="icon-header">
                            <svg xmlns="http://www.w3.org/2000/svg" width="54" height="54" viewBox="0 0 54 54" fill="none">
                                <circle cx="27" cy="27" r="26.5" stroke="url(#paint0_linear_2019_68)"/>
                                <path d="M27.1328 17.8594C24.225 17.8594 21.8594 20.225 21.8594 23.1328C21.8594 26.0406 24.225 28.4062 27.1328 28.4062C30.0406 28.4062 32.4062 26.0406 32.4062 23.1328C32.4062 20.225 30.0406 17.8594 27.1328 17.8594ZM27.1328 27.2344C24.8712 27.2344 23.0312 25.3944 23.0312 23.1328C23.0312 20.8712 24.8712 19.0312 27.1328 19.0312C29.3944 19.0312 31.2344 20.8712 31.2344 23.1328C31.2344 25.3944 29.3944 27.2344 27.1328 27.2344Z" fill="url(#paint1_linear_2019_68)"/>
                                <path d="M32.4062 34.6172C32.7299 34.6172 32.9922 34.3549 32.9922 34.0312C32.9922 33.7076 32.7299 33.4453 32.4062 33.4453C32.0826 33.4453 31.8203 33.7076 31.8203 34.0312C31.8203 34.3549 32.0826 34.6172 32.4062 34.6172Z" fill="url(#paint2_linear_2019_68)"/>
                                <path d="M35.0969 29.1171L33.4066 31.5114C33.2199 31.7758 33.2829 32.1414 33.5472 32.328C33.8117 32.5147 34.1773 32.4516 34.3639 32.1873L36.0495 29.7997C37.4994 27.8633 38.2656 25.5582 38.2656 23.1328C38.2656 16.9941 33.2715 12 27.1328 12C20.9941 12 16 16.9941 16 23.1328C16 25.5582 16.7662 27.8633 18.2161 29.7997L26.0019 40.8281H18.3438C18.0202 40.8281 17.7578 41.0904 17.7578 41.4141C17.7578 41.7377 18.0202 42 18.3438 42H35.9219C36.2454 42 36.5078 41.7377 36.5078 41.4141C36.5078 41.0904 36.2454 40.8281 35.9219 40.8281H28.2637L31.3241 36.4931C31.5108 36.2287 31.4478 35.8632 31.1835 35.6765C30.919 35.4898 30.5534 35.5529 30.3668 35.8172L27.1328 40.3981C27.1328 40.3981 19.1622 29.108 19.1588 29.1035C17.859 27.3702 17.1719 25.3055 17.1719 23.1328C17.1719 17.6404 21.6404 13.1719 27.1328 13.1719C32.6253 13.1719 37.0938 17.6404 37.0938 23.1328C37.0938 25.3055 36.4066 27.3702 35.1068 29.1035C35.1034 29.108 35.1002 29.1125 35.0969 29.1171Z" fill="url(#paint3_linear_2019_68)"/>
                                <defs>
                                  <linearGradient id="paint0_linear_2019_68" x1="0" y1="27" x2="54" y2="27" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0B773E"/>
                                    <stop offset="1" stop-color="#62AD1B"/>
                                  </linearGradient>
                                  <linearGradient id="paint1_linear_2019_68" x1="16" y1="27" x2="38.2656" y2="27" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0B773E"/>
                                    <stop offset="1" stop-color="#62AD1B"/>
                                  </linearGradient>
                                  <linearGradient id="paint2_linear_2019_68" x1="16" y1="27" x2="38.2656" y2="27" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0B773E"/>
                                    <stop offset="1" stop-color="#62AD1B"/>
                                  </linearGradient>
                                  <linearGradient id="paint3_linear_2019_68" x1="16" y1="27" x2="38.2656" y2="27" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0B773E"/>
                                    <stop offset="1" stop-color="#62AD1B"/>
                                  </linearGradient>
                                </defs>
                              </svg>
                        </span>
                        <span class="info-header">
                            <span>{{ $setting['address'.$lang] }}</span>
                        </span>
                    </div>
                    <div class="email-header">
                        <span class="icon-header">
                            <svg xmlns="http://www.w3.org/2000/svg" width="54" height="54" viewBox="0 0 54 54" fill="none">
                                <circle cx="27" cy="27" r="26.5" stroke="url(#paint0_linear_2019_69)"/>
                                <path d="M35.2116 23.6785L35.3376 23.5525C35.4216 23.4685 35.5057 23.3845 35.6317 23.3005C35.7157 23.2165 35.7997 23.1325 35.8837 23.0485L36.5557 22.4184C36.7237 22.2504 36.8078 21.9984 36.7237 21.7464C36.6817 21.6624 36.6397 21.5784 36.5977 21.4943C36.3877 21.2843 36.0517 21.2423 35.7997 21.3683C35.7577 21.4103 35.7157 21.4103 35.6737 21.4523L35.1276 21.9564C33.4475 23.4685 31.8094 24.9386 30.1292 26.4507C29.7512 26.7868 29.3732 27.1228 28.9952 27.4588C28.4071 27.9628 27.6931 28.2149 26.979 28.2149C26.2649 28.2149 25.5929 28.0048 24.9628 27.4588C24.5848 27.1228 24.2068 26.7868 23.8288 26.4507C22.1486 24.9386 20.5105 23.4685 18.8304 21.9564L18.2843 21.4523C18.2423 21.4103 18.2003 21.4103 18.1583 21.3683C17.9063 21.2003 17.5703 21.2843 17.3603 21.4943C17.2763 21.5784 17.2342 21.6624 17.2342 21.7464C17.1502 21.9564 17.2342 22.2504 17.4023 22.4184L18.0743 23.0485L18.3263 23.3005C18.4103 23.3845 18.4943 23.4685 18.6204 23.5525L18.7464 23.6785C19.5444 24.4346 20.3845 25.1486 21.1826 25.8627C21.4766 26.1147 21.7706 26.4087 22.1066 26.7027C22.0646 26.7447 22.0226 26.7868 21.9806 26.8288C20.6785 28.1309 19.3764 29.391 18.0743 30.6931C18.0323 30.7351 17.9483 30.8191 17.9063 30.8611C17.7383 31.0711 17.7383 31.3651 17.8643 31.5751C18.0323 31.7851 18.2843 31.9111 18.5363 31.7851C18.6624 31.7431 18.7884 31.6591 18.8724 31.5331C20.1745 30.273 21.4766 28.9709 22.7787 27.7108C22.8627 27.6268 22.9047 27.5848 22.9887 27.5008C23.3667 27.8368 23.7027 28.1309 24.0388 28.4249C24.7108 29.0549 25.5509 29.433 26.475 29.517C26.643 29.517 26.811 29.559 26.979 29.559C27.147 29.559 27.315 29.559 27.483 29.517C28.4071 29.433 29.2052 29.0129 29.9192 28.4249C30.2553 28.1309 30.5913 27.7948 30.9693 27.5008C31.0533 27.5848 31.1373 27.6268 31.1793 27.7108C32.4814 28.9709 33.7835 30.273 35.0856 31.5331C35.1696 31.6171 35.2956 31.7431 35.4216 31.7851C35.6737 31.8691 35.9257 31.7851 36.0937 31.5751C36.2617 31.3651 36.2197 31.0711 36.0517 30.8611C36.0097 30.8191 35.9257 30.7351 35.8837 30.6931C34.5816 29.391 33.2795 28.1309 31.9774 26.8288C31.9354 26.7868 31.8934 26.7447 31.8514 26.7027C32.1454 26.4087 32.4394 26.1567 32.7754 25.8627C33.5735 25.1486 34.4136 24.4346 35.2116 23.6785Z" fill="url(#paint1_linear_2019_69)"/>
                                <path d="M36.1357 36.1535H17.8223C15.7221 36.1535 14 34.4313 14 32.3312V20.8223C14 18.7221 15.7221 17 17.8223 17H36.1777C38.2779 17 40 18.7221 40 20.8223V32.3312C39.958 34.4313 38.2779 36.1535 36.1357 36.1535ZM17.8223 18.4281C16.4782 18.4281 15.4281 19.5202 15.4281 20.8223V32.3312C15.4281 33.6753 16.5202 34.7254 17.8223 34.7254H36.1777C37.5218 34.7254 38.5719 33.6333 38.5719 32.3312V20.8223C38.5719 19.4782 37.4798 18.4281 36.1777 18.4281H17.8223Z" fill="url(#paint2_linear_2019_69)"/>
                                <defs>
                                  <linearGradient id="paint0_linear_2019_69" x1="0" y1="27" x2="54" y2="27" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0B773E"/>
                                    <stop offset="1" stop-color="#62AD1B"/>
                                  </linearGradient>
                                  <linearGradient id="paint1_linear_2019_69" x1="14" y1="26.5767" x2="40" y2="26.5767" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0B773E"/>
                                    <stop offset="1" stop-color="#62AD1B"/>
                                  </linearGradient>
                                  <linearGradient id="paint2_linear_2019_69" x1="14" y1="26.5767" x2="40" y2="26.5767" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0B773E"/>
                                    <stop offset="1" stop-color="#62AD1B"/>
                                  </linearGradient>
                                </defs>
                              </svg>
                        </span>
                        <span class="info-header">
                            <span>Email:</span>
                            <span>{{ $optSetting['email'] }}</span>
                        </span>
                    </div>
                    <div class="hotline-header">
                        <span class="span-title-header">Hotline tư vấn</span>
                        <div class="numb-hotline">{{ $optSetting['hotline'] }}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
