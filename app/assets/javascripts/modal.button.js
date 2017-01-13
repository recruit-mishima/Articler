$(function(){
 $('.open-modal').on('click', function(){
   $('.modal').css({display: 'block'});
 })
})

$(function(){
 $('.close-modal').on('click', function(){
   $('.modal').css({display: 'none'});
 })
})

// $(function(){
//  $('.open-bar').on('click', function(){
//    $('.closed-bar').css({display: 'block'});
//  })
// })

// $(function(){
//  $('.closed-bar').on('click', function(){
//    $('.closed-bar').css({display: 'none'});
//  })
// })

// $(function(){
//  $('.close-modal').on('click', function(){
//    $('.modal').css({display: 'none'});
//  })
// })


$(function(){
    $('.bar').css("display", "none");
    $('.open-bar').click(function(){
        $('.bar').toggle();
    });
});