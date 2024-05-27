/* 오늘의 책 하단 미니 섬네일 mouseover 시 화면전환 */
$(function(){
    var index = 0;
    var thumb = $(".today-book-mini-thumb");
    var main = $(".today-book-main");

    main.hide();
    thumb.css({border:""});
    main.eq(index).show();
    thumb.eq(index).css({border:"3px solid #0080ff"});

    thumb.mouseover(function(){
        main.hide();
        thumb.css({border:""});

        index = $(this).index();
        main.eq(index).show();
        thumb.eq(index).css({border:"3px solid #0080ff"});
    });
});
