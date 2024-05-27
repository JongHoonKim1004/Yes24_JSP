/* 서브페이지 openApi 호출 */
/* 상단 서브 함께 산 책 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: { query:"자신감",size: 24},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done((msg)=>{
    
    for(var i = 0 ; i < msg.documents.length ; i++){
        $(".UpRecom-together").find(".UpRecom-content-img").eq(i).append('<a href="#"><img alt="UpRecomIMG" src="'+msg.documents[i].thumbnail+'"/></a>');
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,15);
        $(".UpRecom-together").find(".UpRecom-content-text").eq(i).append('<p class="UpRecom-title"><a href="#">'+tit2+'</a></p>');
        $(".UpRecom-together").find(".UpRecom-content-text").eq(i).append('<p class="UpRecom-author">'+msg.documents[i].authors+'</p>');
        var price = msg.documents[i].price;
        var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".UpRecom-together").find(".UpRecom-content-text").eq(i).append('<p class="UpRecom-price"><strong>'+price2+'</strong> (10% 할인)</p>');
    }
});

/* 상단 서브 많이 산 책 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: { query:"성공",size: 24},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done((msg)=>{
    
    for(var i = 0 ; i < msg.documents.length ; i++){
        $(".UpRecom-lot").find(".UpRecom-content-img").eq(i).append('<a href="#"><img alt="UpRecomIMG" src="'+msg.documents[i].thumbnail+'"/></a>');
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,15);
        $(".UpRecom-lot").find(".UpRecom-content-text").eq(i).append('<p class="UpRecom-title"><a href="#">'+tit2+'</a></p>');
        $(".UpRecom-lot").find(".UpRecom-content-text").eq(i).append('<p class="UpRecom-author">'+msg.documents[i].authors+'</p>');
        var price = msg.documents[i].price;
        var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".UpRecom-lot").find(".UpRecom-content-text").eq(i).append('<p class="UpRecom-price"><strong>'+price2+'</strong> (10% 할인)</p>');
    }
});


/* 하단 오른쪽 서브 이 분야 베스트셀러 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: { query:"습관",size: 5},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done((msg)=>{
    
    for(var i = 0 ; i < msg.documents.length ; i++){
        $(".right-box-1").find(".right-box-li-img").eq(i).append('<a href="#"><img alt="" src="'+msg.documents[i].thumbnail+'"/></a>');
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,10);
        $(".right-box-1").find(".right-box-li-text").eq(i).append('<p class="right-box-li-title"><a href="#">'+tit2+'</a></p>');
        $(".right-box-1").find(".right-box-li-text").eq(i).append('<p class="right-box-author">'+msg.documents[i].authors+'</p>');
        var price = msg.documents[i].price;
        var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".right-box-1").find(".right-box-li-text").eq(i).append('<p class="right-box-price"><strong>'+price2+'</strong>(10% 할인)</p>');
    }
});

/* 하단 오른쪽 서브 이 분야 신상품 */ 
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: { query:"자기관리",size: 5},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done((msg)=>{
    
    for(var i = 0 ; i < msg.documents.length ; i++){
        $(".right-box-2").find(".right-box-li-img").eq(i).append('<a href="#"><img alt="" src="'+msg.documents[i].thumbnail+'"/></a>');
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,10);
        $(".right-box-2").find(".right-box-li-text").eq(i).append('<p class="right-box-li-title"><a href="#">'+tit2+'</a></p>');
        $(".right-box-2").find(".right-box-li-text").eq(i).append('<p class="right-box-author">'+msg.documents[i].authors+'</p>');
        var price = msg.documents[i].price;
        var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".right-box-2").find(".right-box-li-text").eq(i).append('<p class="right-box-price"><strong>'+price2+'</strong>(10% 할인)</p>');
    }
});

/* 작가의 다른 상품 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=authors",
    data: { query:"김나정",size: 6},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done((msg)=>{
    
    for(var i = 0 ; i < msg.documents.length ; i++){
        $(".another-book-li-img").eq(i).append('<a href="#"><img alt="" src="'+msg.documents[i].thumbnail+'"/></a>');
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,15);
        $(".another-book-li-text").eq(i).append('<p class="another-li-title"><a href="#">'+tit2+'</a></p>');
        var price = msg.documents[i].price;
        var price2 = parseInt(price * 0.9);
        var price3 = price2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".another-book-li-text").eq(i).append('<span class="another-li-price">'+price3+'</span>');
        $(".another-book-li-text").eq(i).append('<span class="another-li-discount">(10% 할인)</span>');
    }
})

/* 하단 서브 밑 분야 연관 책 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: { query:"긍정",size: 16},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done((msg)=>{
    
    for(var i = 0 ; i < msg.documents.length ; i++){
        $(".related-main-img").eq(i).append("<a href='#'><img alt='' src='"+msg.documents[i].thumbnail+"'/></a>");
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,15);
        $(".related-main-text").eq(i).append('<p class="related-text-title"><a href="#">'+tit2+'</a></p>');
        $(".related-main-text").eq(i).append('<p class="related-text-authors">'+msg.documents[i].authors+'</p>');
        var price = msg.documents[i].price;
        var price2 = parseInt(price * 0.9);
        var price3 = price2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".related-main-text").eq(i).append('<span class="related-text-price">'+price3+'</span><span class="related-text-discount">(10% 할인)</span>');
    }
});