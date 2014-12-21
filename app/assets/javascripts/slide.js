$(function(){

$('#myCarousel').on('slid', function (e) {
  var id = $('.item.active').data('slide-number');
  id = parseInt(id);
  $('[id^=carousel-selector-]').removeClass('selected');
  $('[id^=carousel-selector-'+id+']').addClass('selected');
});

}