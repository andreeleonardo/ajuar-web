$(function(){
    $('#myCarousel.slide').carousel({
        interval: 5000,
        pause
    });

    $('input').focus(function(){
       $("#myCarousel").carousel('pause');
    }).blur(function() {
       $("#myCarousel").carousel('cycle');
    });
});