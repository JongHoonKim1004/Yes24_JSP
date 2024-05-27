/* 이 상품의 이벤트 펼쳐보기 & 접어보기 */
$(function(){
    var index = 1;
    var main = $(".lower-this-event");
    var btn = $(".this-event-button");
    
    main.css({height:"330px"})
    btn.click(function(){
    if(index == 1)index++;
    else if(index == 2)index--;
    else index = 1;

    if(index == 1){
        main.animate({height:"330px"});
        btn.children("p").text("펼쳐보기");
        btn.children(".UpDown-btn").css({transform:"rotate(90deg"});
    }
    if(index == 2){
        main.animate({height:"470px"});
        btn.children("p").text("접어보기");
        btn.children(".UpDown-btn").css({transform:"rotate(270deg"});
    }
    });
});


/* 이 상품의 이벤트 선착품 & 사은품 & 기획전 표기,미표기 */
$(function(){
    var mark = $(".content-mark");
    var content = $(".this-event-main-content");

    mark.hide();
    if (content.hasClass($(".mark1"))){
        mark.eq(0).show();
    }else if (content.hasClass($(".mark2"))){
        mark.eq(1).show();
    }else if (content.hasClass($(".mark3"))){
        mark.eq(2).show();
    }else {
        mark.hide();
    }
});

/* 이 상품의 이벤트 Json 삽입 */
$(function(){
    $.ajax({
    url: "./json/sub_this_event.json",
    dataType: "json",
    success: function(data){
        if(data.length > 0){
            for(var i in data){
                $(".main-content-img").eq(i).append("<a href='#'><img alt='thisEventImg' src='"+data[i].thumbnail+"'/></a>");
                $(".main-content-text").eq(i).append('<p class="event-content-title"><a href="#">'+data[i].title+'</a></p>');
                $(".main-content-text").eq(i).append('<p class="event-content-content">'+data[i].content+'</p>');
                $(".main-content-text").eq(i).append('<p class="event-content-date">'+data[i].date+'</p>');
            }
        }
    }
})
});