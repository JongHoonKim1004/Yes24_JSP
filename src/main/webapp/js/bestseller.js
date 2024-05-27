/* 베스트셀러 & 인기검색어 화면전환 */
$(function(){
    var button = $(".bestseller-btn");
    var main = $(".bestseller-main");
    var index = 0;

    button.css({color:"#999", fontWeight:""});
    main.hide();
    button.eq(0).css({color:"black",fontWeight:"700"});
    main.eq(0).show();

    button.click(function(){
        button.css({color:"#999", fontWeight:""});
        main.hide();

        index = $(this).index();
        button.eq(index).css({color:"black",fontWeight:"700"});
        main.eq(index).show();
    });
});

/* 베스트셀러 1~5위 & 6~10위 화면전환 */
$(function(){
    var num = $(".bestseller-rank-num");
    var ranking = $(".bestseller-ranking")
    var index = 0;

    num.css({color:"", fontWeight:""});
    ranking.hide();
    num.eq(0).css({color:"black", fontWeight:"bold"});
    ranking.eq(0).show();

    num.click(function(){
        num.css({color:"", fontWeight:""});
        ranking.hide();
        
        index = $(this).index();
        num.eq(index).css({color:"black", fontWeight:"bold"});
        ranking.eq(index).show();
    });
});