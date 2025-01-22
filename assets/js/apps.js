/* Validation form */
validateForm('validation-contact');
validateForm('validation-newsletter');
/*validateForm('validation-cart');
validateForm('validation-user');*/

/* Lazys */
NN_FRAMEWORK.Lazys = function () {
	if (isExist($('.lazy'))) {
		var lazyLoadInstance = new LazyLoad({
			elements_selector: '.lazy'
		});
	}
};

/* Load name input file */
NN_FRAMEWORK.loadNameInputFile = function () {
	if (isExist($('.custom-file input[type=file]'))) {
		$('body').on('change', '.custom-file input[type=file]', function () {
			var fileName = $(this).val();
			fileName = fileName.substr(fileName.lastIndexOf('\\') + 1, fileName.length);
			$(this).siblings('label').html(fileName);
		});
	}
};

/* Back to top */
NN_FRAMEWORK.GoTop = function () {
	$(window).scroll(function () {
		if (!$('.scrollToTop').length)
			$('body').append('<div class="scrollToTop"><img src="' + GOTOP + '" alt="Go Top"/></div>');
		if ($(this).scrollTop() > 100) $('.scrollToTop').fadeIn();
		else $('.scrollToTop').fadeOut();
	});

	$('body').on('click', '.scrollToTop', function () {
		$('html, body').animate({ scrollTop: 0 }, 800);
		return false;
	});
	$('body').on('click', '.scrollToTopMobile', function () {
		$('html, body').animate({ scrollTop: 0 }, 800);
		return false;
	});
};

/* Alt images */
NN_FRAMEWORK.AltImg = function () {
	$('img').each(function (index, element) {
		if (!$(this).attr('alt') || $(this).attr('alt') == '') {
			$(this).attr('alt', WEBSITE_NAME);
		}
	});
};

/* Menu */
NN_FRAMEWORK.Menu = function () {
	if (isExist($('.menu'))) {
		$('.menu ul li a').each(function () {
			$this = $(this);

			if (!isExist($this.next('ul').find('li'))) {
				$this.next('ul').remove();
				$this.removeClass('has-child');
			}
		});
	}
    if ($('.navigation').length) {
        let navHeight = $('.navigation').outerHeight();
        function checkScrollDirection(callback) {
            let lastScrollTop = 0;
            $(window).on('scroll', function() {
                let currentScroll = $(this).scrollTop();
                if (currentScroll > lastScrollTop) {
                    callback('down');
                } else {
                    callback('up');
                }
                lastScrollTop = currentScroll <= 0 ? 0 : currentScroll;
            });
        }
        function detectStatusOfNavigation(event) {
            const OFFSET_TOP = 60,
                MIN_COMPUTER_VIEWPORT = 1024;
            const eventType = event.type,
                fixedOnLoad = !$('.above-nav').length ||
                $('.above-nav')[0].clientHeight === 0 ||
                ($('.below-nav-rps').length && $('body').width() > MIN_COMPUTER_VIEWPORT),
                scrolledPassAbove = $(window).scrollTop() >= (fixedOnLoad ? OFFSET_TOP : $('.above-nav').outerHeight());
            const isBottom = window.innerHeight + window.pageYOffset >= document.body.offsetHeight,
                isTop = window.pageYOffset === 0,
                isMobile = $('body').width() < MIN_COMPUTER_VIEWPORT,
                isIndex = isExist($('.slideshow')) ? true : false;

            $('.navigation').toggleClass('is-bottom', isBottom);
            $('.navigation').toggleClass('is-top', isTop);
            $('.navigation').toggleClass('is-mobile', isMobile);
            $('.navigation').toggleClass('is-desktop', !isMobile);

            if (eventType !== 'scroll') {
                $('.navigation').toggleClass('is-index', isIndex);
                $('.navigation').toggleClass('not-index', !isIndex);
            }
            if (fixedOnLoad) {
                $('.navigation').addClass('is-fixed');
                $('.navigation').toggleClass('was-scrolled', scrolledPassAbove);
            } else {
                $('.navigation').toggleClass('is-fixed was-scrolled', scrolledPassAbove);
            }
            if (fixedOnLoad) {
                if (!$('.below-nav-rps').length || (($('.below-nav-rps').length || $('.above-nav')[0].clientHeight > 0) && isMobile)) {
                    $('.below-nav').css({
                        marginTop: navHeight,
                    });
                } else {
                    $('.below-nav').css({
                        marginTop: 0,
                    });
                }
            } else {
                $('.below-nav').css({
                    marginTop: scrolledPassAbove ? navHeight : 0,
                });
            }
			if (isMobile && !$('.nav-menu ul').length) {
				$('.nav-menu').html($('.menu ul.ulmn').clone(true));
			} else if (!isMobile) {
				$('.nav-menu').empty();
			}
        }

        checkScrollDirection(function(direction) {
		$('.navigation')[direction === 'down' ? 'addClass' : 'removeClass']('scrolling-down')[direction === 'up' ? 'addClass' : 'removeClass']('scrolling-up');
        });
        $(window).bind('load resize', function(event) {
            detectStatusOfNavigation(event);
        }).scroll(function(event) {
            detectStatusOfNavigation(event);
        });

		if ($('.menu-mobile-btn').length) {
			$('body').on('click', 'span.btn-dropdown-menu', function() {
				var o = $(this);
				if (!o.hasClass('active')) {
					o.addClass('active');
					o.next('.sub-menu').stop().slideDown(300);
				} else {
					o.removeClass('active');
					o.next('.sub-menu').stop().slideUp(300);
				}
			});
			$('.menu-mobile-btn').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				$('.header-left-fixwidth').toggleClass('open-sidebar-menu');
				$('.opacity-menu').toggleClass('open-opacity');

				$('body').toggleClass('no-scroll', $('.opacity-menu').hasClass('open-opacity'));
			});
			$('.opacity-menu').click(function(e) {
				$('.header-left-fixwidth').removeClass('open-sidebar-menu');
				$('.opacity-menu').removeClass('open-opacity');

				$('body').removeClass('no-scroll');
			});
		}
    }

};

/* Tools */
NN_FRAMEWORK.Tools = function () {
	if (isExist($('.toolbar'))) {
		$('.footer').css({ marginBottom: $('.toolbar').innerHeight() });
	}
};

/* Popup */
NN_FRAMEWORK.Popup = function () {
	if (isExist($('#popup'))) {
		validateForm('validation-popup');
		$('#popup').modal('show');
	}
};

/* Wow */
NN_FRAMEWORK.Wows = function () {
	new WOW().init();
};

/* Photobox */
NN_FRAMEWORK.Photobox = function () {
	if (isExist($('.album-gallery'))) {
		$('.album-gallery').photobox('a', { thumbs: true, loop: false });
	}
};

/* DatePicker */
NN_FRAMEWORK.DatePicker = function () {
	if (isExist($('#birthday'))) {
		$('#birthday').datetimepicker({
			timepicker: false,
			format: 'd/m/Y',
			formatDate: 'd/m/Y',
			minDate: '01/01/1950',
			maxDate: TIMENOW
		});
	}
};

/* Search */
NN_FRAMEWORK.Search = function () {
	if (isExist($('.icon-search-menu'))) {
		$('.icon-search-menu').click(function () {
			if ($(this).hasClass('active')) {
				$(this).removeClass('active');
				$('.search-grid').stop(true, true).animate({ opacity: '0', width: '0px' }, 200);
			} else {
				$(this).addClass('active');
				$('.search-grid').stop(true, true).animate({ opacity: '1', width: '230px' }, 200);
			}
			document.getElementById($(this).next().find('input').attr('id')).focus();
			$('.icon-search-menu i').toggleClass('fa-xmark');
		});
	}
	if (isExist($('.icon-search'))) {
		$('.icon-search').click(function () {
			if ($(this).hasClass('active')) {
				$(this).removeClass('active');
				$('.search-grid').stop(true, true).animate({ opacity: '0', width: '0px' }, 200);
			} else {
				$(this).addClass('active');
				$('.search-grid').stop(true, true).animate({ opacity: '1', width: '230px' }, 200);
			}
			document.getElementById($(this).next().find('input').attr('id')).focus();
			$('.icon-search i').toggleClass('fa-xmark');
		});
	}

	if (isExist($('.search-auto'))) {
		$('.show-search').hide();
		$('.search-auto').keyup(function () {
			$keyword = $(this).val();
			if ($keyword.length >= 2) {
				$.get('tim-kiem-goi-y?keyword=' + $keyword, function (data) {
					if (data) {
						$('.show-search').show();
						$('.show-search').html(data);
					}
				});
			}
		});
	}
};
/* Aos */
NN_FRAMEWORK.AosAnimation = function() {
    AOS.init({});
};
/* Videos */
NN_FRAMEWORK.Videos = function () {
	Fancybox.bind('[data-fancybox]', {});
};

/* Owl Data */
NN_FRAMEWORK.OwlData = function (obj) {
	if (!isExist(obj)) return false;
	var items = obj.attr('data-items');
	var rewind = Number(obj.attr('data-rewind')) ? true : false;
	var autoplay = Number(obj.attr('data-autoplay')) ? true : false;
	var loop = Number(obj.attr('data-loop')) ? true : false;
	var lazyLoad = Number(obj.attr('data-lazyload')) ? true : false;
	var mouseDrag = Number(obj.attr('data-mousedrag')) ? true : false;
	var touchDrag = Number(obj.attr('data-touchdrag')) ? true : false;
	var animations = obj.attr('data-animations') || false;
	var smartSpeed = Number(obj.attr('data-smartspeed')) || 800;
	var autoplaySpeed = Number(obj.attr('data-autoplayspeed')) || 800;
	var autoplayTimeout = Number(obj.attr('data-autoplaytimeout')) || 5000;
	var dots = Number(obj.attr('data-dots')) ? true : false;
	var responsive = {};
	var responsiveClass = true;
	var responsiveRefreshRate = 200;
	var nav = Number(obj.attr('data-nav')) ? true : false;
	var navContainer = obj.attr('data-navcontainer') || false;
	var navTextTemp =
		"<svg xmlns='http://www.w3.org/2000/svg' class='icon icon-tabler icon-tabler-chevron-left' width='44' height='45' viewBox='0 0 24 24' stroke-width='1.5' stroke='#fff' fill='none' stroke-linecap='round' stroke-linejoin='round'><path stroke='none' d='M0 0h24v24H0z' fill='none'/><polyline points='15 6 9 12 15 18' /></svg>|<svg xmlns='http://www.w3.org/2000/svg' class='icon icon-tabler icon-tabler-chevron-right' width='44' height='45' viewBox='0 0 24 24' stroke-width='1.5' stroke='#fff' fill='none' stroke-linecap='round' stroke-linejoin='round'><path stroke='none' d='M0 0h24v24H0z' fill='none'/><polyline points='9 6 15 12 9 18' /></svg>";
	var navText = obj.attr('data-navtext');
	navText =
		nav &&
		navContainer &&
		(((navText === undefined || Number(navText)) && navTextTemp) ||
			(isNaN(Number(navText)) && navText) ||
			(Number(navText) === 0 && false));

	if (items) {
		items = items.split(',');

		if (items.length) {
			var itemsCount = items.length;

			for (var i = 0; i < itemsCount; i++) {
				var options = items[i].split('|'),
					optionsCount = options.length,
					responsiveKey;

				for (var j = 0; j < optionsCount; j++) {
					const attr = options[j].indexOf(':') ? options[j].split(':') : options[j];

					if (attr[0] === 'screen') {
						responsiveKey = Number(attr[1]);
					} else if (Number(responsiveKey) >= 0) {
						responsive[responsiveKey] = {
							...responsive[responsiveKey],
							[attr[0]]: (isNumeric(attr[1]) && Number(attr[1])) ?? attr[1]
						};
					}
				}
			}
		}
	}

	if (nav && navText) {
		navText = navText.indexOf('|') > 0 ? navText.split('|') : navText.split(':');
		navText = [navText[0], navText[1]];
	}

	obj.owlCarousel({
		rewind,
		autoplay,
		loop,
		lazyLoad,
		mouseDrag,
		touchDrag,
		smartSpeed,
		autoplaySpeed,
		autoplayTimeout,
		dots,
		nav,
		navText,
		navContainer: nav && navText && navContainer,
		responsiveClass,
		responsiveRefreshRate,
		responsive
	});

	if (autoplay) {
		obj.on('translate.owl.carousel', function (event) {
			obj.trigger('stop.owl.autoplay');
		});

		obj.on('translated.owl.carousel', function (event) {
			obj.trigger('play.owl.autoplay', [autoplayTimeout]);
		});
	}

	if (animations && isExist(obj.find('[owl-item-animation]'))) {
		var animation_now = '';
		var animation_count = 0;
		var animations_excuted = [];
		var animations_list = animations.indexOf(',') ? animations.split(',') : animations;

		obj.on('changed.owl.carousel', function (event) {
			$(this).find('.owl-item.active').find('[owl-item-animation]').removeClass(animation_now);
		});

		obj.on('translate.owl.carousel', function (event) {
			var item = event.item.index;

			if (Array.isArray(animations_list)) {
				var animation_trim = animations_list[animation_count].trim();

				if (!animations_excuted.includes(animation_trim)) {
					animation_now = 'animate__animated ' + animation_trim;
					animations_excuted.push(animation_trim);
					animation_count++;
				}

				if (animations_excuted.length == animations_list.length) {
					animation_count = 0;
					animations_excuted = [];
				}
			} else {
				animation_now = 'animate__animated ' + animations_list.trim();
			}
			$(this).find('.owl-item').eq(item).find('[owl-item-animation]').addClass(animation_now);
		});
	}
};
NN_FRAMEWORK.OwlPage = function () {
	if (isExist($('.owl-page'))) {
		$('.owl-page').each(function () {
			NN_FRAMEWORK.OwlData($(this));
		});
	}
};

NN_FRAMEWORK.DomChange = function () {
	if (isExist($('#fotorama-videos'))) {
		$('#fotorama-videos').fotorama();
	}
	if (isExist($('.video-home'))) {
		$('body').on('change', '.listvideos', function () {
			var id = $(this).val();console.log(id);
			var url = $(this).parent().data('url');
			$.ajax({
				url:url,
				type: 'GET',
				dataType: 'html',
				data: {
					id: id,
				},
				success: function (result) {
					$('.video-main').html(result);
				}
			});
		});
	}
};

NN_FRAMEWORK.aweOwlPage = function () {
	var owl = $('.owl-carousel.in-page');
	owl.each(function () {
		var xs_item = $(this).attr('data-xs-items');
		var md_item = $(this).attr('data-md-items');
		var lg_item = $(this).attr('data-lg-items');
		var sm_item = $(this).attr('data-sm-items');
		var margin = $(this).attr('data-margin');
		var dot = $(this).attr('data-dot');
		var nav = $(this).attr('data-nav');
		var height = $(this).attr('data-height');
		var play = $(this).attr('data-play');
		var loop = $(this).attr('data-loop');

		if (typeof margin !== typeof undefined && margin !== false) {
		} else {
			margin = 30;
		}
		if (typeof xs_item !== typeof undefined && xs_item !== false) {
		} else {
			xs_item = 1;
		}
		if (typeof sm_item !== typeof undefined && sm_item !== false) {
		} else {
			sm_item = 3;
		}
		if (typeof md_item !== typeof undefined && md_item !== false) {
		} else {
			md_item = 3;
		}
		if (typeof lg_item !== typeof undefined && lg_item !== false) {
		} else {
			lg_item = 3;
		}

		if (loop == 1) {
			loop = true;
		} else {
			loop = false;
		}
		if (dot == 1) {
			dot = true;
		} else {
			dot = false;
		}
		if (nav == 1) {
			nav = true;
		} else {
			nav = false;
		}
		if (play == 1) {
			play = true;
		} else {
			play = false;
		}

		$(this).owlCarousel({
			loop: loop,
			margin: Number(margin),
			responsiveClass: true,
			dots: dot,
			nav: nav,
			navText: [
				'<div class="owlleft"><svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;"><polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline></svg></div>',
				'<div class="owlright"><svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;"><polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline></svg></div>'
			],
			autoplay: play,
			autoplayTimeout: 4000,
			smartSpeed: 3000,
			autoplayHoverPause: true,
			autoHeight: false,
			responsive: {
				0: {
					items: Number(xs_item)
				},
				600: {
					items: Number(sm_item)
				},
				1000: {
					items: Number(md_item)
				},
				1200: {
					items: Number(lg_item)
				}
			}
		});
	});
};
NN_FRAMEWORK.Api = function () {
	if (isExist($('.click-product'))) {
	$('.click-product span').click(function (e) {
		var thisClass = $(this).closest('.other-product');
		thisClass.find('.click-product span').removeClass('active');
		$(this).addClass('active');
		var url = $(this).data('url');
		var type = $(this).data('type');
		var template = $(this).data('template');
		var id_list = $(this).data('list');
		var id_cat = $(this).data('cat');
		var id_item = $(this).data('item');
		var status =  $(this).data('status');
		var paginate = $(this).data('paginate');
		var other = $(this).data('other');
		var section = $(this).data('section');
		var slug = $(this).data('slug');
		var eshow = $(this).data('eshow');
		$.ajax({
			url: url,
			type: 'GET',
			data: {
				type: type,
				status: status,
				id_list: id_list,
				id_cat: id_cat,
				id_item: id_item,
				template: template,
				other: other,
				section: section,
				slug: slug,
				paginate: paginate,
				eShow: eshow
			},
			success: function (result) {
				thisClass.find(eshow).html(result);
				NN_FRAMEWORK.Lazys();
				NN_FRAMEWORK.OwlPage();
			}
		});
	});
	$('.click-product').each(function () {
        $(this).find('span').first().trigger('click');
    });
	$('.sort-select-main span').on('click', function () {
		var sort = $(this).data('sort');
		$('.sort-select-main span').removeClass('active');
		$(this).addClass('active');

		var activeProduct = $('.click-product span.active');
		var url = activeProduct.data('url');
		var id_list = activeProduct.data('list');
		var slug = activeProduct.data('slug');
		var paginate = activeProduct.data('paginate');
		var other = activeProduct.data('other');
		var section = activeProduct.data('section');
		var eshow = activeProduct.data('eshow');

		$.ajax({
			url: url,
			type: 'GET',
			data: {
				id_list: id_list,
				slug: slug,
				paginate: paginate,
				other: other,
				section: section,
				eShow: eshow,
				sort: sort
			},
			success: function (result) {
				$(eshow).html(result);
				NN_FRAMEWORK.Lazys();
				NN_FRAMEWORK.OwlPage();
			},
			error: function () {
				alert('Đã xảy ra lỗi, vui lòng thử lại.');
			}
		});
	});

}


	if (isExist($('.load-product-home'))) {
		$('.load-product-home').each(function () {
			var thisClass = $(this);
			var url = thisClass.data('url');
			var type = thisClass.data('type');
			var paginate = thisClass.data('paginate');
			var template = thisClass.data('template');
			var other = thisClass.data('other');
			var slug = thisClass.data('slug');
			var status = thisClass.data('status');
			var id_list = thisClass.data('list');
			var id_cat = thisClass.data('cat');
			var id_item = thisClass.data('item');
			var section = thisClass.data('section');
			var eshow = thisClass.data('eshow');
			$.ajax({
				url: url,
				type: 'GET',
				data: {
					type: type,
					status: status,
					id_list: id_list,
					id_cat: id_cat,
					id_item: id_item,
					template: template,
					other: other,
					section: section,
					slug: slug,
					paginate: paginate,
					eShow: eshow
				},
				success: function (result) {
					thisClass.find(eshow).html(result);
					NN_FRAMEWORK.Lazys();
					NN_FRAMEWORK.OwlPage();
				}
			});
		});
	}
	$('body').on('click', '#load-more', function() {
		var page = $(this).data('page');
		var section = $(this).data('section');
		var button = $(this);
		var parentContainer;

		if (section === 'home') {
			parentContainer = button.closest('.load-product-home');
		} else if (section === 'list') {
			parentContainer = button.closest('.product-list').find('span.active');
		}
		else if (section === 'cat') {
			parentContainer = button.closest('.list-product').find('span.active');
		}

		if (parentContainer && parentContainer.length) {
			var url = parentContainer.data('url');
			var type = parentContainer.data('type');
			var paginate = parentContainer.data('paginate');
			var other = parentContainer.data('other');
			var id_list = parentContainer.data('list');
			var id_cat = parentContainer.data('cat');
			var template = parentContainer.data('template');
			var eshow = parentContainer.data('eshow');
			$.ajax({
				url: url,
				type: 'GET',
				data: { type, other, paginate, template, id_list, id_cat, page,eshow,section },
				success: function(response) {
					handleAjaxSuccess(response, button, page,section,eshow);
					NN_FRAMEWORK.Lazys();
				}
			});
		}
	});

	function handleAjaxSuccess(response, button, page,section,eshow) {
		if (response.trim()) {
			var newProducts = $(response).find('.row').html();
			if (newProducts) {
				button.parent('.col-12.button').remove();
				$(eshow).find('#product-list-' + section + ' .row').append(newProducts);
				button.data('page', page + 1);
			}
		} else {
			button.remove();
		}
	}

	if (isExist($('.item-search'))) {
		$('.item-search input').click(function () {
			Filter();
		});
	}

	if (isExist($('.sort-select-main'))) {
		$('.sort-select-main p a').click(function () {
			$('.sort-select-main p a').removeClass('check');
			$(this).addClass('check');
			Filter();
		});
	}

	$('.filter').click(function (e) {
		$('.left-product').toggleClass('show');
	});
	TextSort();
};

NN_FRAMEWORK.Properties = function () {
	if (isExist($('.grid-properties'))) {
		$('.properties').click(function (e) {
			$(this).parents('.grid-properties').find('.properties').removeClass('active');
			$(this).addClass('active');
		});
	}
};
NN_FRAMEWORK.slickPage = function () {
	if ($('.slick.in-page').length > 0) {
		$('.slick.in-page').each(function () {
			var dots = $(this).attr('data-dots');
			var infinite = $(this).attr('data-infinite');
			var speed = $(this).attr('data-speed');
			var vertical = $(this).attr('data-vertical');
			var verticalSwiping = $(this).attr('data-verticalSwiping');
			var arrows = $(this).attr('data-arrows');
			var fade = $(this).attr('data-fade');
			var autoplay = $(this).attr('data-autoplay');
			var autoplaySpeed = $(this).attr('data-autoplaySpeed');
			var centerMode = $(this).attr('data-centerMode');
			var centerPadding = $(this).attr('data-centerPadding');
			var slidesDefault = $(this).attr('data-slidesDefault');
			var responsive = $(this).attr('data-responsive');
			var xs_item = $(this).attr('data-xs-items');
			var md_item = $(this).attr('data-md-items');
			var lg_item = $(this).attr('data-lg-items');
			var sm_item = $(this).attr('data-sm-items');
			var slidesDefault_ar = slidesDefault.split(':');
			var xs_item_ar = xs_item.split(':');
			var sm_item_ar = sm_item.split(':');
			var md_item_ar = md_item.split(':');
			var lg_item_ar = lg_item.split(':');
			var to_show = slidesDefault_ar[0];
			var to_scroll = slidesDefault_ar[1];
			if (responsive == 1) {
				responsive = true;
			} else {
				responsive = false;
			}
			if (dots == 1) {
				dots = true;
			} else {
				dots = false;
			}
			if (arrows == 1) {
				arrows = true;
			} else {
				arrows = false;
			}
			if (fade == 1) {
				fade = true;
			} else {
				fade = false;
			}

			if (infinite == 1) {
				infinite = true;
			} else {
				infinite = false;
			}
			if (autoplay == 1) {
				autoplay = true;
			} else {
				autoplay = false;
			}
			if (centerMode == 1) {
				centerMode = true;
			} else {
				centerMode = false;
			}
			if (vertical == 1) {
				vertical = true;
			} else {
				vertical = false;
			}
			if (verticalSwiping == 1) {
				verticalSwiping = true;
			} else {
				verticalSwiping = false;
			}
			if (typeof speed !== typeof undefined && speed !== false) {
			} else {
				speed = 300;
			}
			if (typeof autoplaySpeed !== typeof undefined && autoplaySpeed !== false) {
			} else {
				autoplaySpeed = 2000;
			}
			if (typeof centerPadding !== typeof undefined && centerPadding !== false) {
			} else {
				centerPadding = '0px';
			}
			var reponsive_json = [
				{
					breakpoint: 1024,
					settings: {
						slidesToShow: Number(lg_item_ar[0]),
						slidesToScroll: Number(lg_item_ar[1])
					}
				},
				{
					breakpoint: 992,
					settings: {
						slidesToShow: Number(md_item_ar[0]),
						slidesToScroll: Number(md_item_ar[1])
					}
				},
				{
					breakpoint: 768,
					settings: {
						slidesToShow: Number(sm_item_ar[0]),
						slidesToScroll: Number(sm_item_ar[1]),
						vertical: false
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: Number(xs_item_ar[0]),
						slidesToScroll: Number(xs_item_ar[1]),
						vertical: false
					}
				}
			];
			if (responsive == 1) {
				$(this).slick({
					dots: dots,
					infinite: infinite,
					arrows: arrows,
					speed: Number(speed),
					vertical: vertical,
					verticalSwiping: verticalSwiping,
					slidesToShow: Number(to_show),
					slidesToScroll: Number(to_scroll),
					autoplay: autoplay,
					autoplaySpeed: Number(autoplaySpeed),
					responsive: reponsive_json
				});
			} else {
				$(this).slick({
					dots: dots,
					infinite: infinite,
					arrows: arrows,
					speed: Number(speed),
					vertical: vertical,
					verticalSwiping: verticalSwiping,
					slidesToShow: Number(to_show),
					slidesToScroll: Number(to_scroll),
					autoplay: autoplay,
					autoplaySpeed: Number(autoplaySpeed)
				});
			}
		});
	}
	if (isExist($('.slick-slideqc'))) {
		$('.slick-slideqc').slick({
			dots: false,
			infinite: false,
			arrows: false,
			speed: 300,
			slidesToShow: 2,
			slidesToScroll: 1,
			vertical: true,
			responsive: [
			{
				breakpoint: 768,
				settings: {
					vertical: false,
				}
			},
			]
		});
	}
};

NN_FRAMEWORK.load_token = (callback) => {
	if (typeof CSRF_TOKEN != 'undefined' && CSRF_TOKEN) {
		if (typeof window['TOKEN'] == 'undefined') {
			fetch(CSRF_TOKEN)
				.then((json) => json.text())
				.then((result) => {
					window['TOKEN'] = result;
					callback(result);
				});
		} else {
			callback(window['TOKEN']);
		}
	}
};

NN_FRAMEWORK.addTokenToFroms = (token) => {
	const items = document.querySelectorAll('.csrf_token:not([value]), .csrf_token[value=""]');
	if (items) {
		for (const v of items) {
			v.value = token;
		}
	}
};

/* Ready */
$(document).ready(function () {
	NN_FRAMEWORK.load_token((value) => {
		NN_FRAMEWORK.Api();
		NN_FRAMEWORK.addTokenToFroms(value);
	});
	NN_FRAMEWORK.Lazys();
	NN_FRAMEWORK.Popup();
	NN_FRAMEWORK.AltImg();
	NN_FRAMEWORK.GoTop();
	NN_FRAMEWORK.Menu();
	NN_FRAMEWORK.OwlPage();
	NN_FRAMEWORK.slickPage();
	NN_FRAMEWORK.Videos();
	NN_FRAMEWORK.Photobox();
	NN_FRAMEWORK.Search();
	NN_FRAMEWORK.DomChange();
	NN_FRAMEWORK.DatePicker();
	NN_FRAMEWORK.loadNameInputFile();
});