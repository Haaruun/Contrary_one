$(function(){
$('.control').click( function(){
  $('body').addClass('mode-search');
  $('.input-search').focus();
  $('.btn').text('');
  $('.side').addClass('hide');
  $('.main').addClass('full');
  $('img').css('display', 'none');
});

$('.icon-close').click( function(){
  $('body').removeClass('mode-search');
  $('.btn').text('☌');
  $('.side').removeClass('hide');
  $('.main').removeClass('full');
    $('img').css('display', 'block');

});

$('.button').click(function() {
  var clicks = $(this).data('clicks');
  $('.side').toggleClass('movedown');
  if (clicks) {
       setTimeout(function(){
      	 $('section').slideToggle('slow');
      }, 900);
$('.red').each(function(i){
	setTimeout(function(){
    $('.red').eq(i).toggleClass('add');
        }, 150 * (i + 1));
});
  } else {
     $('section').slideToggle('slow');  
	$('.red').each(function(i){
	setTimeout(function(){
    $('.red').eq(i).toggleClass('add');
        }, 450 * (i + 1));
});  }
  $(this).data("clicks", !clicks);
});





});


