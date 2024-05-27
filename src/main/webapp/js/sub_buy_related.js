/* 분야 연관 책 영역 버튼으로 화면전환 */
$(function(){
    var index = 0;
    var prev = $(".related-prev");
    var next = $(".related-next");
    var num = $(".related-num > h6");
    var main = $(".related-main");

    main.hide();
    main.eq(index).show();
    prev.click(function(){
        index--;
        if(index < 0) index = 3;

        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/4");
    });
    next.click(function(){
        index++;
        if(index > 3) index = 0;

        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/4");
    });
});