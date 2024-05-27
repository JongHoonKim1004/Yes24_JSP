/* 중간 금액바 스크롤 다운시 fixed 만들기 */
$(function(){
    var sticky = "nav-sticky-on";
    var title = $(".detail-nav-title");
    var main = $("#detail-nav");

    title.hide();

    $(window).scroll(()=>{
        if ($(this).scrollTop() > 1719){
            title.show();
            main.css({position:"sticky", top:"0", left:"0", zIndex:"3"});
            
        } else {
            title.hide();
            main.css({position:'', top:"", left:"", zIndex:""});
            
        }
    })
});
