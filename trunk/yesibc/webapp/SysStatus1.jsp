<%@ page language="java"
	import="java.util.*,java.io.*,java.text.DecimalFormat"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>System monitor</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<br/>
		<div align="center"><B>System monitor</B></div>
		<br><br/>

<%!
	public static String getNum(String str) {
		try {
			if (str == null || (str.trim()).length() < 1) {
				return "";
			}
			String temp = "0123456789";
			String tempString = "";
			String string = "";
			for (int i = 0; i < str.length(); i++) {
				tempString = str.substring(i, i + 1);
				if (temp.indexOf(tempString) > -1) {
					string += tempString;
				}
			}
			return string;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "";
		}
	}

	public static String getNewNum(String str1) {
		try {
		
		double d1 = Double.parseDouble(str1);
	
		DecimalFormat df = new DecimalFormat("###.00");  
		
		return df.format(d1/1024); 

		} catch (Exception ex) {
			ex.printStackTrace();
			return "";
		}
	}
	
%>
		<%
	try{

			String pathStr = request.getRealPath("/");
			out.println("Currnet path:" + pathStr + "<BR>");

 			ProcessBuilder pb = new ProcessBuilder("/bin/sh",
                         "-c",
                         "vmstat 1 2");
			Process process = pb.start();


			InputStreamReader isr = new InputStreamReader(new BufferedInputStream(process.getInputStream()));
			char[] buffer = new char[1024];

			String str = "";
			while (isr.read(buffer) != -1) {
				for (char c : buffer) {
					str = str+c;
				}
			}
			System.out.print(str);

			out.println("<br><b>System message by vmstat===:</b><br>"  + str + "<BR><p/>");
			String[] sa = str.split("\n");
			out.println("<br><b>String[]===:</b><br>"  + (sa==null?"null":sa.length) + "<BR><p/>");
			
			for(String t:sa){
				out.println("<br><b>System message by t:sa===:</b>"  + t + "<BR>");
			}

		}catch(Exception e){
			e.printStackTrace();
			out.println("Exception message:\n" + e.getMessage());
		}
  %>
   <jsp:include page="status" />
	</body>
</html>
