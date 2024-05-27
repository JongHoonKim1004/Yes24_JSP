/* 회원리뷰 사진 영역 사진 채우기 */
$(function(){
    for(let i = 0 ; i < 7 ; i++){
        $(".user-review-userimg").append("<div class='user-review-img'></div>")
    }
    
    for(let i = 0 ; i < 7 ; i++){
        $(".user-review-img").eq(i).html("<a href='#'><img alt='reviewImg' src='img/sub/user_review_"+(i+1)+".jpg'/></a>");
    }
});