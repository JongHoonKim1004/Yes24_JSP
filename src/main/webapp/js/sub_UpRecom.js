/* 상단 서브 책 추천 영역 메뉴바 클릭시 화면 전환 */
$(function(){
    var index = 0;
    var page = $(".UpRecom-page");
    var menu = $(".UpRecom-menu");

    page.hide();
    menu.css({backgroundColor:"",borderBottom:""});
    page.eq(index).show();
    menu.eq(index).css({backgroundColor:"white",borderBottom:"0"});

    menu.click(function(){
        page.hide();
        menu.css({backgroundColor:"",borderBottom:""});
        
        index = $(this).index();
        page.eq(index).show();
        menu.eq(index).css({backgroundColor:"white",borderBottom:"0"});
    });
});


/* 좌우 꺽쇠 클릭시 화면 번호 전환 */
$(function(){
    var index = 0;
    var main_tog = $(".UpRecom-together");
    var main_lot = $(".UpRecom-lot");
    var tog_prev = $(".UpRecom-together-prev");
    var tog_next = $(".UpRecom-together-next");
    var lot_prev = $(".UpRecom-lot-prev");
    var lot_next = $(".UpRecom-lot-next");

    main_tog.hide();
    main_lot.hide();
    main_tog.eq(index).show();
    main_lot.eq(index).show();

    tog_prev.click(function(){
        index--;
        if(index < 0 ) index += main_tog.length;

        main_tog.hide();
        main_tog.eq(index).show();
    });

    tog_next.click(function(){
        index++;
        if(index >= main_tog.length ) index -= main_tog.length;

        main_tog.hide();
        main_tog.eq(index).show();
    });

    lot_prev.click(function(){
        index--;
        if(index < 0 ) index += main_lot.length;

        main_lot.hide();
        main_lot.eq(index).show();
    });

    lot_next.click(function(){
        index++;
        if(index >= main_tog.length ) index -= main_lot.length;

        main_lot.hide();
        main_lot.eq(index).show();
    });
});