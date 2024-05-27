/* 메인 슬라이더 초기 화면 설정 */
$(function(){
    $("#slider-main-ul > li:first").css({backgroundColor:"#0080ff"}).children("a").css({color:"white"});
    $(".slider-box").hide();
    $(".slider-box").first().show();
    $("#slider-main-ul > li").mouseover(function(){
        $("#slider-main-ul > li").css({backgroundColor:"white"}).children("a").css({color:"black"});
        $(this).css({backgroundColor:"#0080ff"}).children("a").css({color:"white"});
        $("#slider-main-ul > li").children('.slider-box').hide();
        $(this).children(".slider-box").show();
    });
});