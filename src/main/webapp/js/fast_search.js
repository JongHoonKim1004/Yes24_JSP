$(function(){
    $(".fast-search-div-li").mouseenter(function(){
        $(this).css({"background-color":"#0080ff"}).children("a").css({color:"white"});
        $(".fast-search-div").hide();
        $(this).children(".fast-search-div").show();
    }).mouseleave(function(){
        $(this).css({"background-color":""}).children("a").css({color:""});
        $(".fast-search-div").hide();
    });
    $("#fast-search-ul-div > ul").mouseenter(function(){
        $("#fast-search-div").animate({width:"608px"},200);
    }).mouseleave(function(){
        $("#fast-search-div").animate({width:"110px"},200);
    });
});
