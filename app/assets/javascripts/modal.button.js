// $(function(){
//  $('.modal-button').on('click', function(){
//    $('.modal').css({display: 'block'});
//  })
// })


$(".open-modal").click(funciton(event){
  event.prevnetDefault();
  var hre = $(this).attr("href");
  $(href).toggleClass("disappear");
});

$(".close-modal").click(funciton(event){
  event.prevnetDefault();
  $(".modal-dialog").hide();
});

$(".open-modal").click(function(event){
  event.prevnetDefault();
});