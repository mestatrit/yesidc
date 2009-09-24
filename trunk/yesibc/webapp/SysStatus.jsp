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
                         "top -n 1 > "+pathStr+"memory.txt");
			Process process = pb.start();

			Thread.sleep(500);
			
			out.println("<br><b>process.exitValue():</b>"  + process.exitValue() + "<BR><p/>");
			process.destroy();
				

			File file = new File(pathStr+"memory.txt");
			if(!file.exists() || file.length() < 1){
				pb = new ProcessBuilder("/bin/sh","-c",
                         "free > "+pathStr+"memory.txt");	
                process = pb.start();		
  				Thread.sleep(500);
             }
			out.println("<br><b>process.exitValue():</b>"  + process.exitValue() + "<BR><p/>");
			process.destroy();
			file = new File(pathStr+"memory.txt");
			if(!file.exists() || file.length() < 1){
				out.println("Can't read info.");
				return;
			}

			FileInputStream fis = null;
			byte[] buf = new byte[1024];
			StringBuffer sb = new StringBuffer();
			String memoryStr = "";
			String temp = "";

			try{
				fis = new FileInputStream(file);
				while ((fis.read(buf)) != -1) {
					sb.append(new String(buf));
					buf = new byte[1024];// 重新生成，避免和上次读取的数据重复
				}
			}finally{
				if(fis!=null){
					fis.close();
				}
			}

			temp = sb.toString();
			out.println("<br><b>System message by top===:</b><br>"  + temp + "<BR><p/>");
			
	        String total = "";
	        String free = "";
	        String[] str = null;
	        
	        int i = 0;
	        int j = 0;
	        
	        if(temp.indexOf("Memory:")>-1){
	        	i = temp.indexOf("Memory:");
	        	j = temp.indexOf("swap free");
	        	memoryStr = temp.substring(i+7,j);
	        	str = memoryStr.split(",");
		        total = getNum(str[0]);
		        free = getNum(str[1]);
	        }else{
	        	i = temp.indexOf("Mem:");
	        	j = temp.indexOf("-/");
	        	memoryStr = temp.substring(i+4,j);	        	
				str = memoryStr.split(" ");
				List<String> ls = new ArrayList<String>();
				for(String s1 : str){
					if(!"".equals(s1)){
						ls.add(s1);
					}
				}
		        total = getNewNum(ls.get(0));
		        free = getNewNum(ls.get(2));        	

				out.println("<br><b>memoryStr by top:</b><br><br>"  + memoryStr + "<BR><p/>");
	        }

			out.println("System Total Memory:" + total + "MB<BR>");
			out.println("System Free Memory:" + free + "MB<BR>");

			pathStr = null;
			pb = null;
			process = null;
			temp = null;
			memoryStr = null;
			file = null;
			str = null;
			fis = null;
			buf = null;
			sb = null;
		}catch(Exception e){
			e.printStackTrace();
			out.println("Exception message:\n" + e.getMessage());
		}
  %>
   <jsp:include page="status" />
	</body>
</html>
