$(document).ready(function(){
    $("#header-ad-close-btn").click(function(){
        $("#header-ad").slideUp();
        $(".slider-box").animate({top:"0px"});
    });
});

