<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<title>Refresh</title>
	</head>


	<body onload="check()">

		<%
			String finishTag = (String) request.getAttribute("finishTag");
			Long callTimes = (Long) request.getAttribute("callTimes");
		%>

		<div id="finishTag">
			<%=finishTag%>
		</div> 
		<div id=callTimes>
			callTimes:<%=callTimes%> Minutes
		</div>

	</body>
</html>
<script>
	function check()
　　{
		if("true"==Trim(document.getElementById("finishTag").innerHTML)){
			parent.document.getElementById("content1").style.display="none";
			parent.document.getElementById("content3").style.display="";
		}else{
			parent.document.getElementById("content2").style.display="";
			parent.document.getElementById("content1").style.display="none";
		}
　　}


// 去掉字符串的头空格（左空格）
    function LTrim(str){ 
        var i;
        for(i=0;i<str.length; i++) {
            if(str.charAt(i)!=" ") break;
        }
        str = str.substring(i,str.length);
        return str;
    }
    
    // 去掉字符串的尾空格（右空格）
    function RTrim(str){
        var i;
        for(i=str.length-1;i>=0;i--){
            if(str.charAt(i)!=" ") break;
        }
        str = str.substring(0,i+1);
        return str;
    }
    
    // 去掉字符串的头尾空格（左右空格）
    function Trim(str){
        return LTrim(RTrim(str));
    }
    </SCRIPT>
