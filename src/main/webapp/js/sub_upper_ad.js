/* 상단 광고 영역 사진 삽입 */
$(function(){
    var adImage = ["img/sub/upper_banner_1.jpg","img/sub/upper_banner_2.jpg","img/sub/upper_banner_3.jpg","img/sub/upper_banner_4.jpg"];
    for(var i = 0 ; i < adImage.length ; i++){
        $(".upper-ad-main").eq(i).append("<a href='#'><img alt='' src='"+adImage[i]+"'/></a>");
    }
});

/* 상단 광고 영역 화면전환 */
$(function(){
    var index = 0;
    var main = $(".upper-ad-main");
    var li = $(".leftMulti-li");

    main.hide();
    li.css({backgroundColor:"",fontWeight:"",color:""});
    main.eq(index).show();
    li.eq(index).css({backgroundColor:"#f8f8f8",fontWeight:"550",color:"#333"});
    
    li.mouseover(function(){
        main.hide();
        li.css({backgroundColor:"",fontWeight:"",color:""});
        
        index = $(this).index();
        main.eq(index).show();
        li.eq(index).css({backgroundColor:"#f8f8f8",fontWeight:"550",color:"#333"});
    });
});