$(function(){
var modal = document.getElementById('dialog');

$('.source').click(function(){
    modal.showModal();
    $('dialog').addClass('see');

});


 
    
$('.modalClose').click(function(){
	modal.close();
    $('dialog').removeClass('see'); 
});


$(window).scroll(function(){


	var scroll = $(this).scrollTop();


	$('.blos').css({'transform': 'translate(0,'+ scroll/2.5 +'px)'});

	$('.head_show').css({'-webkit-filter': 'grayscale(' + scroll/3 + '%'});
    

});    
});