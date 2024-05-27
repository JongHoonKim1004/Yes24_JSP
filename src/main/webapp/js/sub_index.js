/* 목차 영역 펼쳐보기 & 접어보기 */
$(function(){
    var index = 1;
    var main = $(".lower-book-index");
    var btn = $(".index-button");
    
    main.css({height:"397px"})
    btn.click(function(){
    if(index == 1)index++;
    else if(index == 2)index--;
    else index = 1;

    if(index == 1){
        main.animate({height:"397px"});
        btn.children("p").text("펼쳐보기");
        btn.children(".UpDown-btn").css({transform:"rotate(90deg"});
    }
    if(index == 2){
        main.animate({height:"2020px"});
        btn.children("p").text("접어보기");
        btn.children(".UpDown-btn").css({transform:"rotate(270deg"});
    }
    });
});