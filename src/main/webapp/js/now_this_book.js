/* 지금, 이 책 영역 화면 전환 */
$(function(){
    var index = 0;
    var main = $(".now-this-book");
    var num = $(".now-this-book-num > h6")
    var btn = $(".secondary-btn");
    var prev = $(".sec-prev");
    var next  = $(".sec-next");
    
    btn.hide();
    main.hide();
    main.eq(index).show();
    num.text((index+1)+"/3");
    main.mouseenter(() => {
        $(this).find(".sec-prev").show();
        $(this).find(".sec-next").show();
    })
    main.mouseleave(() => {
        $(this).find(".sec-prev").hide();
        $(this).find(".sec-next").hide();
    });
    
    prev.click(() => {
        index--;
        if(index < 0) index += main.length;
        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/3");
    });

    next.click(() => {
        index++;
        if(index >= main.length) index = 0;
        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/3");
    });
});