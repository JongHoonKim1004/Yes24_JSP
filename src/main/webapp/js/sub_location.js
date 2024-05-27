/* location 영역 버튼 클릭시 화면출력 */
$(function(){
    var index = 0;
    var btn = $(".loc-nav-btn");
    var contents = $(".loc-nav-contents");

    btn.click(function(){
        if($(this).siblings(".loc-nav-contents").hasClass("nav-contents-show")){
            $(this).siblings(".loc-nav-contents").removeClass("nav-contents-show");
            btn.css({transform: "rotate(90deg)"})
            return false;
        }
        contents.removeClass("nav-contents-show");
        btn.css({transform: "rotate(90deg)"})
        $(this).siblings(".loc-nav-contents").addClass("nav-contents-show");
        $(this).css({transform: "rotate(270deg)"})
        
        
    });
});