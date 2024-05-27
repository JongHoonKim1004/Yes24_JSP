/* 화제의 책 영역 화면 전환 */
$(function(){
    var index = 0;
    var main = $(".wadai-book");
    var num = $(".wadai-book-num > h6")
    var btn = $(".secondary-btn");
    var prev = $(".wadai-prev");
    var next  = $(".wadai-next");
    
    btn.hide();
    main.hide();
    main.eq(index).show();
    num.text((index+1)+"/3");
    main.mouseenter(() => {
        $(this).find(".wadai-prev").show();
        $(this).find(".wadai-next").show();
    })
    main.mouseleave(() => {
        $(this).find(".wadai-prev").hide();
        $(this).find(".wadai-next").hide();
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

/* 크레마클럽 광고 화면전환 */
$(function(){
    var index = 0;
    var main = $(".secondary-ad-crema");
    var prev = $(".cremaAd-prev");
    var next = $(".cremaAd-next");
    var num = $(".secondary-page-num-in-crema > h6");
    var btn = $(".secondary-btn");

    btn.hide();
    main.hide();
    main.eq(index).show();

    main.mouseenter(() => {
        $(this).find(".cremaAd-prev").show();
        $(this).find(".cremaAd-next").show();
    })
    main.mouseleave(() => {
        $(this).find(".cremaAd-prev").hide();
        $(this).find(".cremaAd-next").hide();
    })

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