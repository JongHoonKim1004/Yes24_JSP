/**
 * 
 */

 function productCheck(){
	 if(document.frm.name.value.length == 0){
		 alert("상품명을 입력해주세요.");
		 frm.name.focus();
		 return false;
	 }
	 if(document.frm.price.value.length == 0){
		 alert("가격을 입력해주세요.");
		 frm.price.focus();
		 return false;
	 }
	 if(isNaN(document.frm.price.value)){
		 alert("숫자를 입력해주세요.");
		 frm.price.focus();
		 return false;
	 }
	 return true;
 }