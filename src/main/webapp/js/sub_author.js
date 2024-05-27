/* 나카가와 료 본문 확장 */
$(function(){
    var index = 0;
    var content = $(".author-content-text")
    var button = $(".author-button");

    content.hide();
    content.eq(0).show();
    button.click(() => {
        if(index == 0) index++;
        else if(index == 1) index--;
        else index = 1;

        content.hide();
        content.eq(index).show();

        if(index == 0){
            button.children("p").text("펼쳐보기");
            button.children(".UpDown-btn").css({transform:"rotate(90deg"});
        }
        if(index == 1){
            button.children("p").text("접어보기");
            button.children(".UpDown-btn").css({transform:"rotate(270deg"});
        }
    });
});