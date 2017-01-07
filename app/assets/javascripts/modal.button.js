$(function(){
 $('.open-modal').on('click', function(){
  console.log("hoge");
   $('.modal').css({display: 'block'});
   $('.cover-background').css({display: 'block'});
 })
})

$(function(){
 $('.close-modal').on('click', function(){
   $('.modal').css({display: 'none'});
   $('.cover-background').css({display: 'none'});
 })
})
