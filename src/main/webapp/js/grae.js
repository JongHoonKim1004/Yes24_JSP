/* 그래제본소 버튼 이동( 현재 임시 변경필요 ) */
$(function(){
    var index = 0;
    var main = $(".grae-main");
    var h4 = $("#grae-main > h4");
    var btn = $(".grae-btn");
    var prev = $(".grae-prev");
    var next  = $(".grae-next");
    
    btn.hide();
    main.hide();
    main.eq(index).show();
    h4.text((index+1)+"/5");
    main.mouseenter(() => {
        btn.show();
    })
    main.mouseleave(() => {
        btn.hide();
    });
    
    prev.click(() => {
        index--;
        if(index < 0) index += main.length;
        main.hide();
        main.eq(index).show();
        h4.text((index+1)+"/5");
    });

    next.click(() => {
        index++;
        if(index >= main.length) index = 0;
        main.hide();
        main.eq(index).show();
        h4.text((index+1)+"/5");
    });
});