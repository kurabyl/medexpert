$(document).ready(function(){
	// begin burger menu
  $('.mob-start').on('click', function () {
        if($('.mob-start').hasClass('mob-start--active')){
            $('.mob-start').removeClass('mob-start--active');
            $('.menu').removeClass('menu--active');
        }else{
            $('.mob-start').addClass('mob-start--active');
            $('.menu').addClass('menu--active');
        }                           
  });
  // end burger menu

  // begin закрытия окна уведомления
  $(document).click(function(event) { 
      if(!$(event.target).closest('.message').length) { 
        if($('.alert').hasClass('alert--active')){
            $('.alert').removeClass('alert--active');
        }
      }  
  });
  $('.my-alert__close').click(function(event) {
      $('.alert').removeClass('alert--active');
  });   
  // end закрытия окна уведомления

  $('.bank_gallery').slick({
    autoplay: false,
    arrows: true,
    dots: true,
    pauseOnHover: false,
    pauseOnFocus: false,
    appendDots: $('.bank_gal_control'),
    appendArrows: $('.bank_gal_control'),
    speed: 1000,
    slidesToShow: 3,
    slidesToScroll: 1,
    prevArrow: '<button type="button" class="slick_arrow slick_prev"></button>',
    nextArrow: '<button type="button" class="slick_arrow slick_next"></button>',
    responsive:[{
      breakpoint: 800,
      settings:{
        slidesToShow: 2,
      }
    },
    {
      breakpoint: 500,
      settings:{
        slidesToShow: 1,
      }
    }]
  });

  $('.conf_gallery').slick({
    autoplay: false,
    arrows: true,
    dots: true,
    pauseOnHover: false,
    pauseOnFocus: false,
    speed: 1000,
    slidesToShow: 3,
    slidesToScroll: 1,
    prevArrow: '<button type="button" class="slick_arrow slick_prev"></button>',
    nextArrow: '<button type="button" class="slick_arrow slick_next"></button>',
    responsive:[{
      breakpoint: 1000,
      settings: {
        slidesToShow: 2,
      }
    },
    {
      breakpoint: 570,
      settings: {
        slidesToShow: 1,
      }
    }]
  });

  $('.partner_list').slick({
    autoplay: false,
    arrows: false,
    dots: true,
    pauseOnHover: false,
    pauseOnFocus: false,
    speed: 1000,
    slidesToShow: 4,
    slidesToScroll: 2,
    prevArrow: '<button type="button" class="slick_arrow slick_prev"></button>',
    nextArrow: '<button type="button" class="slick_arrow slick_next"></button>',
    responsive:[{
      breakpoint: 800,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
      }
    },
    {
      breakpoint: 570,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
      }
    }]
  });

  tabContentHeight();
 
});  

var scrollPos = 0;

$(window).on("scroll", function(){
  var top = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
  if( top > 50 ){
    $('.header_fixed').addClass('scroll');
  } else{
    $('.header_fixed').removeClass('scroll');
  }

  var st = $(this).scrollTop();
  if (st > scrollPos){
    $('.header_fixed').addClass('hide');
  } else {
    $('.header_fixed').removeClass('hide');
  }
  scrollPos = st;
});



$(document).on("click", function(event){
  var target = event.target;

  if( !$(target).hasClass('lang_choice') ){
    $('.other_lang').slideUp();
    $('.lang_block').removeClass('active');
  }

  if( !$(target).hasClass('mob_menu') && !$(target).hasClass('menu_btn') && !$(target).hasClass('menu_btn_span') && !$(target).hasClass('menu_link') ){
    $('.mob_menu').removeClass('active');
    $('.under_nav').slideUp(700);
  }

  if( !$(target).hasClass('lang_block') && !$(target).hasClass('lang_choice') && !$(target).hasClass('lang') ){
    $('.lang_block').removeClass('active');
    $('.other_lang').slideUp(700);
  }

  if( !$(target).hasClass('search_input') && !$(target).hasClass('search_input') && !$(target).hasClass('search_btn') && !$(target).hasClass('search_show') ){
  	$('.search_block, .search_show').removeClass('active');
  }
});

$('.lang_choice').on("click", function(){
  $(this).siblings('.other_lang').slideToggle();
  $(this).parent('.lang_block').toggleClass('active');
});

$(window).resize(function(){
  mobMenu();
  tabContentHeight();
});

function mobMenu(){
  if( $('.mob_menu').css("display") == 'block' ){
    $('.header_bottom .menu').prependTo('.under_nav');
    $('.sub_menu').hide();
  } else{
    $('.under_nav .menu').prependTo('.header_bottom');
    $('.sub_menu').show();
  }
}

mobMenu();

$('.mob_menu').on("click", function(){
  if( $(this).hasClass('active') ){
    $(this).removeClass('active');
    $('.under_nav').slideUp(700);
  } else{
    $(this).addClass('active');
    $('.under_nav').slideDown(700);
  }
});

$('.under_nav').on("click", function(event){
  var target = event.target;
  if( $(target).hasClass('menu_link') ){
    if( $(target).hasClass('active') && $(target).siblings('.sub_menu').css("display") == 'none' ){
      $(target).siblings('.sub_menu').slideDown(600);
    } else if( $(target).hasClass('active') ){
      $(target).removeClass('active');
      $(target).siblings('.sub_menu').slideUp(600);
    } else{
      $(target).addClass('active');
      $(target).siblings('.sub_menu').slideDown(600);
    }
  }

  if( $(target).hasClass('sub_link') ){
     $(target).siblings('.sub_menu').slideToggle(600);
  }
});

$('.search_show').on("click", function(){
  if( $(this).hasClass('active') ){
    $(this).removeClass('active');
    $('.search_block').removeClass('active');
  } else{
    $(this).addClass('active');
    $('.search_block').addClass('active');
  }
});


$('.contact_map').on("click", function(){
  $(this).children('iframe').removeAttr('style');
});


// Map

$('.city').on("mouseover", function () {    
   var cityId = $(this).attr('data-id');
   $('#' + cityId + '_oblast').addClass("hovered");

   if( cityId == 'uko' ){
    $('#' + cityId + '_oblast_1').addClass("hovered");
    $('#' + cityId + '_oblast_2').addClass("hovered");
    $('#' + cityId + '_oblast_3').addClass("hovered");
   }
});
$('.city').on("mouseleave", function () {   
   var cityId = $(this).attr('data-id');
   $('#' + cityId + '_oblast').removeClass("hovered");

   if( cityId == 'uko' ){
    $('#' + cityId + '_oblast_1').removeClass("hovered");
    $('#' + cityId + '_oblast_2').removeClass("hovered");
    $('#' + cityId + '_oblast_3').removeClass("hovered");
   }
});

$('.map_oblast').on("mouseover", function(){
  var cityId = $(this).attr('id').slice(0, -2);
  if( cityId == 'uko_oblast' ){
    $('#' + cityId + '_1').addClass("hovered");
    $('#' + cityId + '_2').addClass("hovered");
    $('#' + cityId + '_3').addClass("hovered");
   }
});

$('.map_oblast').on("mouseleave", function(){
  var cityId = $(this).attr('id').slice(0, -2);
  if( cityId == 'uko_oblast' ){
    $('#' + cityId + '_1').removeClass("hovered");
    $('#' + cityId + '_2').removeClass("hovered");
    $('#' + cityId + '_3').removeClass("hovered");
   }
});


$('.map_oblast, .city, .mobile_map_item').on("click", function(){
  var id;
  var pos, blockHeight;

  if( $(this).hasClass('map_oblast') ){
    id = $(this).attr('id');

    if( id == 'uko_oblast_1' || id == 'uko_oblast_2' || id == 'uko_oblast_3' ){
      id = id.slice(0, -9);
    } else{
      id = id.slice(0, -7);
    }
    
  } else{
    id = $(this).attr('data-id');
  }

  $('.map_oblast').removeClass('active');
  $('#' + id + '_oblast').addClass('active');

  $('.map_info_item').removeClass('active');
  $('#' + id + '__info').addClass('active');

  if( id == 'uko' ){
    $('#uko_oblast_1, #uko_oblast_2, #uko_oblast_3').addClass("active");
  }

  if( $(this).hasClass('mobile_map_item') ){
    $('.mobile_map_item.active').removeClass('active');
    $(this).addClass('active');
  } else{
    $('.city').removeClass('active');
    $('.city.' + id).addClass('active');
  }

  blockHeight = $('.map_info_item.active').outerHeight();

  if( blockHeight != undefined ){
    $('.map_info').height( blockHeight );
  } else{
    $('.map_info').removeClass('active');
    return;
  }

  $('.map_info').addClass('active');
});

$('.map_info_close').on("click", function(){
  $('.map_info, .map_oblast.active, .city.active, .map_info_item.active, .mobile_map_item.active').removeClass('active');
});


function mapInfo(){
  $('.map_info').height( $('.map_info_item.active').outerHeight() );
}

$('.mobile_map_item').on("click", function(){
  $('html, body').stop().animate({ scrollTop: $('.map_block').offset().top - 150 }, 1000, 'swing', function(){});
});


// Map END


// Science Tab

$('.tab_item').on("click", function(){
  var tabIndex = $(this).index();

  if( !$(this).hasClass('active') ){
    $('.tab_item.active').removeClass('active');
    $(this).addClass('active');
    $('.tab_content').removeClass('active');
    $('.tab_content_block').children('.tab_content').eq(tabIndex).addClass('active');
    tabContentHeight();
  }
});

function tabContentHeight(){
  $('.tab_content_block').height( $('.tab_content.active').height() + 20 );
}

// Science Tab END

// FAQ

$('.faq_question').on("click", function(){
  if( $(this).hasClass('active') ){
    $(this).removeClass('active');
    $(this).siblings('.faq_answer').slideUp(800);
  } else{
    $(this).addClass('active');
    $(this).siblings('.faq_answer').slideDown(800);
  }
});

// FAQ END


// Dir Blog

$('.dir_block_inner .btn').on("click", function(){
  $('html, body').stop().animate({ scrollTop: $('.dir_request').offset().top - 200 }, 1000, 'swing', function(){});
});

// Dir Blog END


// Custom Select

if( $('.reg_select').hasClass('reg_select') ){
  $('.reg_select').selectric({ forceRenderBelow: true });
}

// Custom Select END


// Spec 

$('.eye_btn').on("click", function(){
  $(this).addClass('active');
  $('body').addClass("spec");
  document.cookie = "spec=true;path=/";
  $('section').addClass('img_hide');
  $('.header_fixed').removeClass('active');

  if( $(this).hasClass('eye_btn_true') ){
    $(this).removeClass('eye_btn_true');
    $('.spec_block_list').slideUp(800);
  } else{
    $(this).addClass('eye_btn_true');
    $('.spec_block_list').slideDown(800);
  }
});


$('.normal_view').on("click", function(){
  $('.eye_btn').removeClass('active');
  $('.eye_btn').removeClass('eye_btn_true');
  $('body').removeClass("spec");
  document.cookie = "spec=false;path=/";
  $('section').removeClass('img_hide');
  $('.size_list_item').removeClass('active');
  $('.size_middle').addClass('active');
  $('.spec_block_list').slideUp(800);

  $('a, div.f18, div.fb18, div, span, h1, h2, h3, h4, th, td, ul').each(function(){
      let d = $(this).css('font-size');
      d = d.match(/\d+/)[0] *1;
      $(this).removeAttr('style');
      // if( $(this).prop("tagName") ==  'DIV' ){
      // } else{
      //   d && $(this).css('font-size', 'inherit');
      // }
  });
  before = "size_middle";

  $('.image_check').removeClass('active');
  $('img').css("opacity", 1);
  $('.contact_map').css("opacity", 1);
});


$( document ).ready(function() {
  if (document.cookie.replace(/(?:(?:^|.*;\s*)spec\s*\=\s*([^;]*).*$)|^.*$/, "$1") === "true") {
    console.log("true");
    $('.eye_btn').trigger("click");
    $('section').addClass('img_hide');
  }else{
    console.log("false");
    $('body').removeClass("spec");
    $('section').removeClass('img_hide');
  }
});

$('.image_check').on("click", function(){
  if( $(this).hasClass('active') ){
    $(this).removeClass('active');
    $('img').css("opacity", 1);
    $('.contact_map').css("opacity", 1);
    // $('.slick-slider').show();
  } else{
    $(this).addClass('active');
    $('img').css("opacity", 0);
    $('.contact_map').css("opacity", 0);
    // $('.slick-slider').hide();
  }
});


var before = "size_middle";

$('.size_list_item').on("click", function() {
  if ($(this).hasClass('size_small') && before !== 'size_small') {
      // $('body').addClass('zoom22');
      // $('body').removeClass('zoom30');
      $('a, div.f18, div.fb18 , div.f15, div, span, h1, h2, h3, h4, th, td, ul').each(function(){
        let d = $(this).css('font-size');
        d = d.match(/\d+/)[0] *1;
        if(before === "size_big"){
          d && $(this).css('font-size', d - 6);
        }else{
          d && $(this).css('font-size', d - 3);
        }
      })
      before = "size_small";
  } else if ($(this).hasClass('size_big') && before !== 'size_big') {
      // $('body').addClass('zoom30');
      // $('body').removeClass('zoom22');
      $('a, div.f18, div.fb18 , div.f15, div, span, h1, h2, h3, h4, th, td, ul').each(function(){
        let d = $(this).css('font-size');
        d = d.match(/\d+/)[0] *1;
         if(before === "size_small"){
          d && $(this).css('font-size', d  + 6);
        }else{
          d && $(this).css('font-size', d + 3);
        }
      })
       before = "size_big";
  } else if ($(this).hasClass('size_middle') && before !== 'size_middle'){
      // $('body').removeClass('zoom22');
      // $('body').removeClass('zoom30');
      $('a, div.f18, div.fb18 , div.f15, div, span, h1, h2, h3, h4, th, td, ul').each(function(){
        let d = $(this).css('font-size');
        d = d.match(/\d+/)[0] *1;
        if(before === "size_big"){
          d && $(this).css('font-size', d - 3);
        }else{
          d && $(this).css('font-size', d + 3);
        }
      })
      before = "size_middle";
  }
  // $('body .item-td.button-item').each(function() {
  //     $(this).removeClass("active");
  // });
  $('.size_list_item').removeClass('active');
  $(this).addClass("active");
});


// Spec END