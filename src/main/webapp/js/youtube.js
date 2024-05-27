/* 예스튜브 영역 함수 */
$(function(){
    $.ajax({
        url:"./json/youtube.json",
        dataType: "json",
        success : function(data){
            if(data.length > 0){
                for(var i in data){
                    $(".youtube-main").eq(i).append("<img alt='youtube-main-img' src='img/"+data[i].main+"'/></a>");
                    $(".youtube-main-content-thumbnail").eq(i).append("<a href='#'><img alt='youtube-content-thumbnail' src='img/"+data[i].main+"'/></a>");
                    $(".youtube-main-content-img").eq(i).append("<a href='#'><img alt='youtube-main-book' src='img/"+data[i].thumbnail+"'/></a>");
                    $(".youtube-text-long").eq(i).append(data[i].long);
                    $(".youtube-text-title").eq(i).append(data[i].title);
                    $(".youtube-text-author").eq(i).append(data[i].author);
                    $(".youtube-text-comp").eq(i).append(data[i].comp);
                    $(".youtube-info").eq(i).append(data[i].info);
                }
            }
        }
    });
});

$(function(){
    var content = $(".youtube-main-content");
    var index = 0;
    var main = $(".youtube-main");
    var info = $(".youtube-info");

    main.css({border:""});
    content.hide();
    info.hide();

    main.eq(index).css({border:"3px solid #0080ff"});
    content.eq(index).show();
    info.eq(index).show();

    main.mouseover(function(){
        main.css({border:""});
        content.hide();
        info.hide();

        index=$(this).index();
        main.eq(index).css({border:"3px solid #0080ff"});
        content.eq(index).show();
        info.eq(index).show();
    });
});