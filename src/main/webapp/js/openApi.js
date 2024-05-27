/* Open Api 호출 영역 */
/* 오늘의 책 부분 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: { query:"오늘", size:4},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for( var i = 0; i < msg.documents.length;i++){
        $(".today-book-mini-thumb").eq(i).append("<a href='#'><img alt='minithumb' src='"+msg.documents[i].thumbnail+"'></a>");
        $(".today-book-thumbnail").eq(i).append("<a href='#'><img alt='bigthumb' src='"+msg.documents[i].thumbnail+"'></a>");
        $(".today-book-intro").eq(i).append('<h4 class="todays-book">오늘의 책</h4>');
        var str = msg.documents[i].contents;
        var str2 = str.substring(0,30);
        $(".today-book-intro").eq(i).append('<h4 class="today-short-intro"><a href="#">'+str2+'</a></h4>');
        var str3 = str.substring(0,190);
        $(".today-book-intro").eq(i).append('<p class="today-long-intro"><a href="#">'+str3+'</a></p>');
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,9);
        $(".today-book-intro").eq(i).append('<p class="today-book-title"><a href="#">'+tit2+'</a></p>');
        
        $(".today-book-intro").eq(i).append('<h5 class="today-book-author">'+msg.documents[i].authors+'</h5>');
        var price = msg.documents[i].price;
        var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".today-book-intro").eq(i).append('<p class="today-book-price">'+price2+'</p>');
    }
});

/* 베스트셀러 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: { query:"가상화폐", size:10},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i in msg.documents){
        if(msg.documents.length > 0){
            $(".bestseller-intro").eq(i).append("<a href='#'><img alt='bestsellerimg' src='"+msg.documents[i].thumbnail+"'></a>");
            var tit = msg.documents[i].title;
            var tit2 = tit.substring(0,9);
            $(".bestseller-intro").eq(i).append("<a href='#'><h3>"+tit2+"</h3></a>");
            $(".bestseller-intro").eq(i).append("<p>"+msg.documents[i].authors[0]+"</p>");
        }
    }
});
/* 지금, 이 책 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: {query: "이기적 유전자", size:12},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    for(var i = 0; i < msg.documents.length;i++){
            $(".now-this-book-img").eq(i).append("<a href='#'><img alt='nowbook' src='"+msg.documents[i].thumbnail+"'></a>");
            var str = msg.documents[i].contents;
            var str2 = str.substring(0,29);
            $(".now-this-book-info").eq(i).append("<p class='book-intro'>"+str2+"</p>");
            var tit = msg.documents[i].title;
            var tit2 = tit.substring(0,9);
            $(".now-this-book-info").eq(i).append("<p class='book-title'><a href='#'>"+tit2+"</a></p>");
            $(".now-this-book-info").eq(i).append('<p class="book-author">'+msg.documents[i].authors+'</p>');
            var price = msg.documents[i].price;
            var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
            $(".now-this-book-info").eq(i).append('<p class="book-price">'+price2+'</p>');
        }
    
});
/* 화제의 책 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query: "제태크", size:12},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    for(var i = 0; i < msg.documents.length;i++){
            $(".wadai-book-img").eq(i).append("<a href='#'><img alt='wadaibook' src='"+msg.documents[i].thumbnail+"'></a>");
            var str = msg.documents[i].contents;
            var str2 = str.substring(0,29);
            $(".wadai-book-info").eq(i).append("<p class='book-intro'>"+str2+"</p>");
            var tit = msg.documents[i].title;
            var tit2 = tit.substring(0,9);
            $(".wadai-book-info").eq(i).append("<p class='book-title'><a href='#'>"+tit2+"</a></p>");
            $(".wadai-book-info").eq(i).append('<p class="book-author">'+msg.documents[i].authors+'</p>');
            var price = msg.documents[i].price;
            var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
            $(".wadai-book-info").eq(i).append('<p class="book-price">'+price2+'</p>');
    }
});
/* 멀티셀렉트 도서 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"자서전", size:15},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i = 0; i < msg.documents.length;i++){
        $(".middle-box-book-img").eq(i).append("<a href='#'><img alt='ms-book-img' src='"+msg.documents[i].thumbnail+"'></a>");
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,9);
        $(".middle-box-book-info").eq(i).append('<a href="#"><p class="ms-book-title">'+tit2+'</p></a>');
        var str = msg.documents[i].contents;
        var str2 = str.substring(0,29);
        $(".middle-box-book-info").eq(i).append('<p class="ms-book-info">'+str2+'</p>');
        $(".middle-box-book-info").eq(i).append('<p class="ms-book-author">'+msg.documents[i].authors+'</p>');
        var price = msg.documents[i].price;
            var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".middle-box-book-info").eq(i).append('<p class="ms-book-price">'+price2+'</p>');
    }
});
/* 멀티셀렉트 중고샵*/
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"사회", size:18},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i = 0; i < msg.documents.length;i++){
        $(".middle-box-used-img").eq(i).append("<a href='#'><img alt='ms-book-img' src='"+msg.documents[i].thumbnail+"'></a>");
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,9);
        $(".middle-box-used-info").eq(i).append('<a href="#"><p class="ms-book-title">'+tit2+'</p></a>');
        var str = msg.documents[i].contents;
        var str2 = str.substring(0,29);
        $(".middle-box-used-info").eq(i).append('<p class="ms-book-info">'+str2+'</p>');
        $(".middle-box-used-info").eq(i).append('<p class="ms-book-author">'+msg.documents[i].authors+'</p>');
        var price = msg.documents[i].price;
            var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".middle-box-used-info").eq(i).append('<p class="ms-book-price">'+price2+'</p>');
    }
});
/* 멀티셀렉트 eBook */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"역사", size:30},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i = 0; i < msg.documents.length;i++){
        $(".middle-box-eBook-img").eq(i).append("<a href='#'><img alt='ms-book-img' src='"+msg.documents[i].thumbnail+"'></a>");
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,9);
        $(".middle-box-eBook-info").eq(i).append('<a href="#"><p class="ms-book-title">'+tit2+'</p></a>');
        var str = msg.documents[i].contents;
        var str2 = str.substring(0,29);
        $(".middle-box-eBook-info").eq(i).append('<p class="ms-book-info">'+str2+'</p>');
        $(".middle-box-eBook-info").eq(i).append('<p class="ms-book-author">'+msg.documents[i].authors+'</p>');
        var price = msg.documents[i].price;
            var price2 = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        $(".middle-box-eBook-info").eq(i).append('<p class="ms-book-price">'+price2+'</p>');
    }
});
/* 멀티셀렉트 웹소설/코믹 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"프랑스", size:4},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i = 0; i < msg.documents.length;i++){
        $(".middle-box-comic-img").eq(i).append("<a href='#'><img alt='ms-book-img' src='"+msg.documents[i].thumbnail+"'></a>");
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,9);
        $(".middle-box-comic-text").eq(i).append('<a href="#"><p class="ms-middle-box-li-text-title">'+tit2+'</p></a>');
        var str = msg.documents[i].contents;
        var str2 = str.substring(0,29);
        $(".middle-box-comic-text").eq(i).append('<p class="ms-middle-box-li-text-info">'+str2+'</p>');
    }
});
/* 멀티셀렉트 CD/LP */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"오페라", size:4},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    ;
    for(var i = 0; i < msg.documents.length;i++){
        $(".middle-box-CDLP-img").eq(i).append("<a href='#'><img alt='ms-book-img' src='"+msg.documents[i].thumbnail+"'></a>");
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,9);
        $(".middle-box-CDLP-text").eq(i).append('<a href="#"><p class="ms-middle-box-li-text-title">'+tit2+'</p></a>');
        var str = msg.documents[i].contents;
        var str2 = str.substring(0,29);
        $(".middle-box-CDLP-text").eq(i).append('<p class="ms-middle-box-li-text-info">'+str2+'</p>');
    }
});
/* 멀티셀렉트 DVD/BD */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"코믹", size:4},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i = 0; i < msg.documents.length;i++){
        $(".middle-box-DVD-img").eq(i).append("<a href='#'><img alt='ms-book-img' src='"+msg.documents[i].thumbnail+"'></a>");
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,9);
        $(".middle-box-DVD-text").eq(i).append('<a href="#"><p class="ms-middle-box-li-text-title">'+tit2+'</p></a>');
        var str = msg.documents[i].contents;
        var str2 = str.substring(0,29);
        $(".middle-box-DVD-text").eq(i).append('<p class="ms-middle-box-li-text-info">'+str2+'</p>');
    }
});
/* 멀티셀렉트 문구/GIFT */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"해리포터", size:4},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i = 0; i < msg.documents.length;i++){
        $(".middle-box-gift-img").eq(i).append("<a href='#'><img alt='ms-book-img' src='"+msg.documents[i].thumbnail+"'></a>");
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,9);
        $(".middle-box-gift-text").eq(i).append('<a href="#"><p class="ms-middle-box-li-text-title">'+tit2+'</p></a>');
        var str = msg.documents[i].contents;
        var str2 = str.substring(0,29);
        $(".middle-box-gift-text").eq(i).append('<p class="ms-middle-box-li-text-info">'+str2+'</p>');
    }
});
/* 멀티셀렉트 티켓 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"공연", size:4},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i = 0; i < msg.documents.length;i++){
        $(".middle-box-ticket-img").eq(i).append("<a href='#'><img alt='ms-book-img' src='"+msg.documents[i].thumbnail+"'></a>");
        var tit = msg.documents[i].title;
        var tit2 = tit.substring(0,9);
        $(".middle-box-ticket-text").eq(i).append('<a href="#"><p class="ms-middle-box-li-text-title">'+tit2+'</p></a>');
        var str = msg.documents[i].contents;
        var str2 = str.substring(0,29);
        $(".middle-box-ticket-text").eq(i).append('<p class="ms-middle-box-li-text-info">'+str2+'</p>');
    }
});
/* 카드섹션 상단 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"미국여행", size:12},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i = 0; i < msg.documents.length;i++){
        $(".card-upper-img").eq(i).append('<a href="#"><img alt="card-upper-img" src="'+msg.documents[i].thumbnail+'"></a>');
        $(".card-upper-text").eq(i).append("<p>"+msg.documents[i].title+"</p>");
    }
});
/* 카드섹션 하단 */
$.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book",
    data: {query:"유럽여행", size:12},
    headers:{Authorization: "KakaoAK 86ae0f597d243b1233b4eab0ffc4965f"}
}).done(function(msg){
    
    for(var i = 0; i < msg.documents.length;i++){
        $(".card-lower-img").eq(i).append('<a href="#"><img alt="card-upper-img" src="'+msg.documents[i].thumbnail+'"></a>');
        $(".card-lower-text").eq(i).append("<p>"+msg.documents[i].title+"</p>");
    }
});