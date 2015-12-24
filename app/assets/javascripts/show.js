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
});