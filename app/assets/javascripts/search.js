$(function(){


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


$('.hide_search').click(function(){
  $('.search').toggleClass('bye');
});


});


