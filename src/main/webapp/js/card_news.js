/* '카드뉴스로 보는 책' json 호출 */
$(function(){
    $.ajax({
        url: "./json/card_news.json",
        dataType: "json",
        success: function(data){
            if(data.length > 0){
                for(var i in data){
                    $(".card-news-img").eq(i).append("<a href='#'><img alt='card-news-thumb' src='img/"+data[i].thumb+"'></a>");
                    $(".card-news-content-book-img").eq(i).append("<a href='#'><img alt='card-news-mini-img' src='img/"+data[i].book+"'/></a>");
                    $(".card-news-content-book-title").eq(i).append("<a href='#'>"+data[i].title+"</a>");
                    $(".card-news-content-book-subtitle").eq(i).append(data[i].subtitle);
                    $(".card-news-content-book-author").eq(i).append(data[i].author+"|"+data[i].comp);
                }
            }
        }
    });
});

/* '카드뉴스로 보는 책' 화면전환 */
$(function(){
    var index = 0;
    var num = $(".card-news-content-num");
    var main = $(".card-news-content");
    var img = $(".card-news-img");
    var btn = $(".card-news-btn");
    var prev = $(".card-news-prev");
    var next = $(".card-news-next");

    main.hide();
    main.eq(index).show();
    img.hide();
    img.eq(index).show();
    btn.hide();

    main.mouseenter(() => {
        $(this).find(".card-news-prev").show();
        $(this).find(".card-news-next").show();
    })
    main.mouseleave(() => {
        $(this).find(".card-news-prev").hide();
        $(this).find(".card-news-next").hide();
    })

    prev.click(() => {
        index--;
        if(index < 0) index += main.length;
        main.hide();
        main.eq(index).show();
        img.hide();
        img.eq(index).show();
        num.text((index+1)+"/3");
    });

    next.click(() => {
        index++;
        if(index >= main.length) index = 0;
        main.hide();
        main.eq(index).show();
        img.hide();
        img.eq(index).show();
        num.text((index+1)+"/3");
    });
});

/* .card-section-box 상단부 화면전환 */
$(function(){
    var index = 0;
    var num = $(".card-section-box-num > h6");
    var main = $(".cardSec-upper");
    var btn = $(".card-section-btn");
    var prev = $(".cardUpper-prev");
    var next = $(".cardUpper-next");

    btn.hide();
    main.hide();
    main.eq(index).show();
    main.mouseenter(() => {
        $(this).find(".cardUpper-prev").show();
        $(this).find(".cardUpper-next").show();
    })
    main.mouseleave(() => {
        $(this).find(".cardUpper-prev").hide();
        $(this).find(".cardUpper-next").hide();
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

/* .card-section-box 하단부 화면전환 */
$(function(){
    var index = 0;
    var num = $(".card-section-box-num > h6");
    var main = $(".cardSec-lower");
    var btn = $(".card-section-btn");
    var prev = $(".cardLower-prev");
    var next = $(".cardLower-next");

    btn.hide();
    main.hide();
    main.eq(index).show();
    main.mouseenter(() => {
        $(this).find(".cardLower-prev").show();
        $(this).find(".cardLower-next").show();
    })
    main.mouseleave(() => {
        $(this).find(".cardLower-prev").hide();
        $(this).find(".cardLower-next").hide();
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