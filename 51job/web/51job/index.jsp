<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
      <script type="text/javascript" src="../js/common.js"></script>
 	   <title>51Job-Key In</title>
</head>

<body  onload="waitLoad(1);freshIframe()">
<jsp:include page="../common/systemWait.jsp"></jsp:include>

<div id="content1" style="display:">
    <s:textfield key="requestId" /> <br/>
     <s:textfield key="failedOrNot" value="0"/> 
     0-default=OK;1-search list;2-company page list;3-company list;4-job list.
     <br/> <br/>
     
    <input type="button" value="Submit" onclick="Go2Server()"/>
    <br/>  <br/>
</div>
<div id="content2" style="display:none">
     <img src="../img/loading-circle1.gif" border="0" >
</div>
<div id="content3" style="font-size: 32pt;display:none">
         Run OK!
</div>
<script>
   document.getElementById("requestId").value = new  Date().getTime() + "";
   var tag = "false";
	function Go2Server()
　　{
		tag = "true";
		document.getElementById("content1").style.display="none";
		document.getElementById("content2").style.display="";
		iframe1.document.getElementById("clawer51JobSearch_requestId").value=document.getElementById("requestId").value;
		iframe1.document.getElementById("clawer51JobSearch_failedOrNot").value=document.getElementById("failedOrNot").value;
		iframe1.document.getElementById("clawer51JobSearch").submit();
　　}

	function freshIframe()
	{
	   if(tag == "true"){
	  	 	iframe2.location = "/clawer51job/51job/clawer51JobRefresh";
		}
		setTimeout("freshIframe();",3000); 
	}



</script>
<iframe id="iframe1" src="submit.jsp" width="300" height="200" />

<iframe id="iframe2" src="#" width="300" height="200" />

<%
/**
<!-- 下面语句实现60秒刷新一次 --> 
<META HTTP-EQUIV="refresh" CONTENT="60"/> 
setTimeout("self.location.reload();",60000); 
*/
 %>

</body>
</html>

