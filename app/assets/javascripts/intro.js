$(document).ready(function(){
  $('.intro').find('button').on('click', function(){
    $(this).closest('.intro').slideUp(1000);
    $('.about').show();
    $('.navbar').slideDown(1000);
  });
});