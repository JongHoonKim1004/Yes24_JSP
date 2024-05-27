/* 멀티셀렉트 메뉴 누르면 화면변경 */
$(function(){
    var index = 0;
    var menuImg = $(".ms-menu-img");
    var menuBox = $(".ms-menu");
    
    menuImg.css({backgroundColor:"#f8f8f8",borderBottom:"1px solid #666"});
    menuBox.hide();
    menuImg.eq(0).css({backgroundColor:"",borderBottom:"0"});
    menuBox.eq(0).show();

    menuImg.click(function(){
        menuImg.css({backgroundColor:"#f8f8f8",borderBottom:"1px solid #666"});
        menuBox.hide();

        index = $(this).index();
        menuImg.eq(index).css({backgroundColor:"",borderBottom:"0"});
        menuBox.eq(index).show();
    });
});

/* 멀티셀렉트 도서 부분 화면전환 */
$(function(){
    var index = 0;
    var main = $(".middle-box-book");
    var num = $(".middle-box-book-num");
    var btn = $(".ms-middle-btn");
    var prev = $(".msBook-prev");
    var next = $(".msBook-next");

    btn.hide();
    main.hide();
    main.eq(index).show();

    main.mouseenter(() => {
        $(this).find(".msBook-prev").show();
        $(this).find(".msBook-next").show();
    })
    main.mouseleave(() => {
        $(this).find(".msBook-prev").hide();
        $(this).find(".msBook-next").hide();
    })

    prev.click(() => {
        index--;
        if(index < 0) index += main.length;
        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/5");
    });

    next.click(() => {
        index++;
        if(index >= main.length) index = 0;
        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/5");
    });
});

/* 멀티셀렉트 중고샵 부분 화면전환 */
$(function(){
    var index = 0;
    var main = $(".middle-box-used");
    var num = $(".middle-box-used-num > h6");
    var btn = $(".ms-middle-btn");
    var prev = $(".msUsed-prev");
    var next = $(".msUsed-next");

    btn.hide();
    main.hide();
    main.eq(index).show();

    main.mouseenter(() => {
        $(this).find(".msUsed-prev").show();
        $(this).find(".msUsed-next").show();
    })
    main.mouseleave(() => {
        $(this).find(".msUsed-prev").hide();
        $(this).find(".msUsed-next").hide();
    })

    prev.click(() => {
        index--;
        if(index < 0) index += main.length;
        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/6");
    });

    next.click(() => {
        index++;
        if(index >= main.length) index = 0;
        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/6");
    });
});

/* 멀티셀렉트 eBook 부분 화면전환 */
$(function(){
    var index = 0;
    var main = $(".middle-box-eBook");
    var num = $(".middle-box-eBook-num > h6");
    var btn = $(".ms-middle-btn");
    var prev = $(".msEBook-prev");
    var next = $(".msEBook-next");

    btn.hide();
    main.hide();
    main.eq(index).show();

    main.mouseenter(() => {
        $(this).find(".msEBook-prev").show();
        $(this).find(".msEBook-next").show();
    })
    main.mouseleave(() => {
        $(this).find(".msEBook-prev").hide();
        $(this).find(".msEBook-next").hide();
    })

    prev.click(() => {
        index--;
        if(index < 0) index += main.length;
        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/10");
    });

    next.click(() => {
        index++;
        if(index >= main.length) index = 0;
        main.hide();
        main.eq(index).show();
        num.text((index+1)+"/10");
    });
});