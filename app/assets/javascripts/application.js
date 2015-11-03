// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function (){

  // Toggle site menu
  $(document).on("click", ".site-menu-toggle-btn", function(e) {
    e.preventDefault();
    var navHeight;
    if ($('#site-nav-container').hasClass('closed')) {
      navHeight = $('#site-nav').height();
      $('#site-nav-container').css( "max-height" , navHeight);
    } else {
      navHeight = '';
      $('#site-nav-container').css( "max-height" , navHeight);
    }
    $('#site-nav-container').toggleClass('closed');
  });


  $('p').widowFix();

  // End toggle site menu

  // Scroll to anchor
  // $(document).on("click", ".nav-anchor", function(e) {
  //   var anchor = $(this).attr('href');
  //   var anchorOffset = $(anchor).offset().top - 60;
  //   console.log(anchor);
  //   $('html, body').animate({
  //       scrollTop: anchorOffset
  //   }, 1000);
  //   $('#site-nav-container').toggleClass('closed');
  // });
  // End scroll to anchor

});

$(window).resize(function() {
  close_mobile_menu();
});

function close_mobile_menu() {

  if( ($('.mobile-menu-button-container').css('display') == 'none') && (!$('#site-nav-container').hasClass('closed')) ) {
    $('#site-nav-container').css( "max-height" , "");
    $('#site-nav-container').addClass('closed');
  } else if ( !$('#site-nav-container').hasClass('closed') ) {
    navHeight = $('#site-nav').height();
    console.log(navHeight);
    $('#site-nav-container').css( "max-height" , navHeight);
  }
}
