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
	public String getNum(String str) {
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

	public String getNewNum(String str1) {
		try {
		
		double d1 = Double.parseDouble(str1);
	
		DecimalFormat df = new DecimalFormat("###.00");  
		
		return df.format(d1/1024); 

		} catch (Exception ex) {
			ex.printStackTrace();
			return "";
		}
	}
	
	public static boolean isNum(String str) {
		try {
			if (str == null || (str.trim()).length() < 1) {
				return false;
			}
			String temp = "0123456789";
			String tempString = "";
			for (int i = 0; i < str.length(); i++) {
				tempString = (str.substring(i, i + 1)).trim();
				if (temp.indexOf(tempString) < 0) {
					return false;
				}
			}
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}


%>
		<%
			int i=0;
			ProcessBuilder pb = null;
			Process process = null;
			InputStreamReader isr = null;
			String str = "";
			String os = null;
			char[] buffer = null;
			String[] sa = null;			
			String[] ss = null;
			List<String> ls = new ArrayList<String>();

			String[] titles = { "run in queue(r)", "blocked for IO(b)",
			"swapped(w)", // 2 procs
			"swap",
			"free", // 4 Memory
			"page reclaims(re)", "minor faults(mf)", "paged in(pi)", "paged out(po)", "freed(fr)",
			"anticipated shortfall(de)", "pages scanned rates(sr)",// 11 pages
			"disk 1", "disk 2", "disk 3", "disk 4",// 15 disk
			"device interrupts(in)", "system calls(sy)", "CPU context switches(cs)",// 18
																					// faults
			"user time(us)", "system time(sy)", "idle time(id)" // 21 CPU
			};

			
			String[] titles1 ={"run in queue(r)", "blocked for IO(b)",// 1 procs
				"memory used(swpd)", "free", "buff", "cache", // 5 Memory 
				"memory swapped in from disk(si)","memory swapped to disk(so)", //7 swap
				"blocks write to(bi)","blocks received from(bo)", //9 io
				"device interrupts(in)", "CPU context switches(cs)", //11  faults
				"user time(us)", "system time(sy)", "idle time(id)","wait IO(wa)" //15 cpu
			};

		try{

			os = (String)application.getAttribute("sys_version_uat");
			if(os == null){
				out.println("<br><b>System is :</b> null.");
 				pb = new ProcessBuilder("uname");
				process = pb.start();
				isr = new InputStreamReader(new BufferedInputStream(process.getInputStream()));
				buffer = new char[1024];
				while (isr.read(buffer) != -1) {
					for (char c : buffer) {
						str = str+c;
					}
				}
				application.setAttribute("sys_version_uat",str.trim());
				out.println("<br><b>Set system to :</b> "+str+".");
			}else{
				out.println("<br><b>System is :</b> "+os.trim()+".");
			}

			pb = new ProcessBuilder("/bin/sh",
                         "-c",
                         "vmstat 1 6");
 			//pb = new ProcessBuilder("vmstat 1 6");
			process = pb.start();


			isr = new InputStreamReader(new BufferedInputStream(process.getInputStream()));
			buffer = new char[1024];

			while (isr.read(buffer) != -1) {
				for (char c : buffer) {
					str = str+c;
				}
			}
			//System.out.print(str);

			//out.println("<br><b>System message by vmstat===:</b><br>"  + str + "<BR><p/>");
			sa = str.split("\n");
			
			for(String t:sa){
				//out.println(t+"abc<br>");
				if(isNum(t)){
					ls.add(t);
				}
			}
			
			if("SunOS".equals(os)){
				for (Iterator<String> it = ls.iterator(); it.hasNext();) {
					str = it.next();
					if(i%2==0){
						it.remove();
						//out.println("move===:</b>"  + str + "<BR>");
					}
					i++;
				}						
			}else{
				for (Iterator<String> it = ls.iterator(); it.hasNext();) {
					str = it.next();
					if(i==0){
						it.remove();
						//out.println("move===:</b>"  + str + "<BR>");
					}
					i++;
				}						
			}
			
			out.println("<br><b>System message by t:sa===:</b>"  + ls.toString() + "<BR>");
	
			sa = new String[ls.size()];
			ls.toArray(sa);
			for (String temp : sa) {
				if(temp==null){
					continue;
				}
				ss = temp.split(" ");
				i = 0;
				for (String s0 : ss) {
					if (s0 == null || "".equals(s0.trim())) {
						continue;
					}
					
					if("SunOS".equals(os)){		
						if(i==3 || i==4){			
							out.print(titles[i]+ i + "[" + getNewNum(s0) + "MB],");
						}else{
							out.print(titles[i]+ i + "[" + s0 + "],");
						}
					}else{
						if(i==2 || i==3 || i==4 || i==5){			
							out.print(titles1[i]+ i + "[" + getNewNum(s0) + "MB],");
						}else{
							out.print(titles1[i]+ i + "[" + s0 + "],");
						}
					}
					i++;
				}
				out.print("<br>");
			}


		}catch(Exception e){
			e.printStackTrace();
			out.println("Exception message:\n" + e.getMessage());
		}finally{
			i=0;
			pb = null;
			process = null;
			isr = null;
			str = null;
			os = null;
			buffer = null;
			sa = null;			
			ls = null;
		}
  %>
   <jsp:include page="status" />
	</body>
</html>
