$(document).ready(function () {
    
    //=========top Menu Button click=========//	
    $("#toggle").click(function () {
        $(this).toggleClass("on");
        //$(".sidemenu").toggleClass('in'); 
        $(".page-container").toggleClass('in');
        // $(".formpage").toggleClass('in');
    });

    $('.more').on("click", function () {

        $('.notedata').toggleClass('in')

    });


    $('.closep').on("click", function () {

        $(this).parents('.notedata').hide();

    })



    //=========top Menu Button click=========//
    $('#cardview').on("click", function () {
        $(this).find("i").toggleClass('icon-id-card fa-table')
        $('.list-card-view').toggle();
        $('.gridview').toggle();

    });
    //=========Search Open Close=========//	
    $('.searchopen').click(function () {
        $('.search-sec').slideToggle();
        $(this).find('i').toggleClass("fa-angle-double-up fa-angle-double-down");

    });
    //=========Search Open Close=========//		
    $('.info').on("click", function () {
        $('.profile-details').toggleClass('active')

    });

    //=========Search Open Close=========//	
    $('.panel-title').on("click", function () {

        $(this).find('span').toggleClass("fa-angle-up fa-angle-down");
    })

    //=========Side Menu=========//		
    var nav = function () {
        $('.side-nav > li > a').click(function () {
            var gw_nav = $('.side-nav');
            gw_nav.find('li').removeClass('active');
            $('.side-nav > li > ul > li').removeClass('active');

            var checkElement = $(this).parent();
            var ulDom = checkElement.find('.submenu')[0];

            if (ulDom == undefined) {
                checkElement.addClass('active');
                $('.side-nav').find('li').find('ul:visible').slideUp();
                return;
            }
            if (ulDom.style.display != 'block') {
                gw_nav.find('li').find('ul:visible').slideUp();
                gw_nav.find('li.init-arrow-up').removeClass('init-arrow-up').addClass('arrow-down');
                gw_nav.find('li.arrow-up').removeClass('arrow-up').addClass('arrow-down');
                checkElement.removeClass('init-arrow-down');
                checkElement.removeClass('arrow-down');
                checkElement.addClass('arrow-up');
                checkElement.addClass('active');
                checkElement.find('ul').slideDown(300);
            } else {
                checkElement.removeClass('init-arrow-up');
                checkElement.removeClass('arrow-up');
                checkElement.removeClass('active');
                checkElement.addClass('arrow-down');
                checkElement.find('ul').slideUp(300);

            }
        });



        $(".sidemenu.in .side-nav > li")
  .mouseenter(function () {
      var gw_nav = $('.side-nav');
      gw_nav.find('li').removeClass('active');
      $('.side-nav > li > ul > li').removeClass('active');

      var checkElement = $(this).parent();
      var ulDom = checkElement.find('.submenu')[0];

      if (ulDom == undefined) {
          checkElement.addClass('active');
          $('.side-nav').find('li').find('ul:visible').slideUp();
          return;
      }
      if (ulDom.style.display != 'block') {
          gw_nav.find('li').find('ul:visible').slideUp();
          gw_nav.find('li.init-arrow-up').removeClass('init-arrow-up').addClass('arrow-down');
          gw_nav.find('li.arrow-up').removeClass('arrow-up').addClass('arrow-down');
          checkElement.removeClass('init-arrow-down');
          checkElement.removeClass('arrow-down');
          checkElement.addClass('arrow-up');
          checkElement.addClass('active');
          checkElement.find('ul').slideDown(300);
      } else {
          checkElement.removeClass('init-arrow-up');
          checkElement.removeClass('arrow-up');
          checkElement.removeClass('active');
          checkElement.addClass('arrow-down');
          checkElement.find('ul').slideUp(300);

      }
  })
  .mouseleave(function () {

  });

        $('.side-nav > li > ul > li > a').click(function () {
            // $(this).parent().parent().parent().removeClass('active');
            $('.side-nav > li > ul > li').removeClass('active');
            $(this).parent().addClass('active')
        });
    };
    nav();

    var windowWidth = $(window).width();

    if (windowWidth <= 800) {
        $('.menubtn').removeClass('on');
        $('.sidemenu').addClass('in');
        $('.formpage').addClass('in');




    } else {


    }
    $('.alert').append("<a class='closebtn' ><i class='fa fa-times-circle-o'></i></a>")

    $('.closebtn').on('click', function (e) {
        $(this).parent().hide();
    });
    //=========Side Menu=========//	
});
//=========Scroll Bar=========//	
(function ($) {
    $(".notifications ul").mCustomScrollbar({ theme: "dark-3" });


})(jQuery);
//=========Scroll Bar=========//