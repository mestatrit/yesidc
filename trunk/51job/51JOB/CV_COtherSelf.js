function ToSave(){
	if(strlength(document.Form1.Introduction.value) > 300){
		alert("�����������150��������(����300���ַ�)");
		document.Form1.Introduction.focus();
	}else{
   		document.Form1.submit();
	}
}
