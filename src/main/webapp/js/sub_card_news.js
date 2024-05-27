/* 카드뉴스 버튼으로 화면전환 */
$(function(){
    var index = 0;
    var prev = $(".card-news-prev");
    var next = $(".card-news-next");
    var cont = $(".card-news-content");
    var num = $(".card-news-num > h6");

    cont.hide();
    cont.eq(0).show();
    prev.hide();
    next.show();
    prev.click(function(){
        index--;
        cont.hide();
        cont.eq(index).show();
        num.text((index+1)+"/5");
        if(index == 0){
            prev.hide();
            next.show();
        }else if(index > 0 && index < 4){
            prev.show();
            next.show();
        }else if(index == 4){
            prev.show();
            next.hide();
        }
    });

    next.click(function(){
        index++;
        cont.hide();
        cont.eq(index).show();
        num.text((index+1)+"/5");
        if(index == 0){
            prev.hide();
            next.show();
        }else if(index > 0 && index < 4){
            prev.show();
            next.show();
        }else if(index == 4){
            prev.show();
            next.hide();
        }
    });
});