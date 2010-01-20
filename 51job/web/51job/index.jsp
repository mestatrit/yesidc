<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
      <script type="text/javascript" src="../js/common.js"></script>
 	   <title>51Job-Key In</title>
</head>

<body  onload="waitLoad(1);">
<jsp:include page="../common/systemWait.jsp"></jsp:include>

<div id="content1" style="display:">
    <s:textfield key="requestId" />
    <input type="button" value="Submit" onclick="Go2Server()"/>
</div>
<div id="content2" style="display:none">
     <img src="../img/loading-circle1.gif" border="0" >
</div>
<script>
   document.getElementById("requestId").value = new  Date().getTime() + "";
	function Go2Server()
　　{
		document.getElementById("content1").style.display="none";
		document.getElementById("content2").style.display="";
		iframe1.document.getElementById("clawer51Job_requestId").value=document.getElementById("requestId").value;
		iframe1.document.getElementById("clawer51Job").submit();
　　}
</script>

<iframe id="iframe1" src="submit.jsp" width="200" height="200" />
<iframe id="iframe2" src="refesh.jsp" width="0" height="0" />

</body>
</html>
