/* 상단 서브 우측 회색 바  +-버튼 작동 */
$(function(){
    var index = 1;  
    var minus = $(".count-minus");
    var plus = $(".count-plus");
    var amount = $(".count-amount")

    minus.click(()=>{
        index--;
        if(index <= 0){
            alert("1개 이하로는 선택할 수 없습니다.");
            index = 1;
        }
        amount.text(index);
    });
    plus.click(()=>{
        index++;
        if(index >= 100){
            alert("100개 이상은 구매하실 수 없습니다.");
            index = 99;
        }
        amount.text(index);
    })
});