function ToSave(){
	if(strlength(document.Form1.Introduction.value) > 300){
		alert("自我评价最多150个中文字(或者300个字符)");
		document.Form1.Introduction.focus();
	}else{
   		document.Form1.submit();
	}
}
