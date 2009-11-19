  <!--     
  文件名：download.html     
  作   者：纵横软件制作中心雨亦奇(zhsoft88@sohu.com)     
  -->     
  <!DOCTYPE   HTML   PUBLIC   "-//W3C//DTD   HTML   4.01   Transitional//EN">     
  <html>     
  <head>     
  <title>下载</title>     
  <meta   http-equiv="Content-Type"   content="text/html;   charset=utf-8">     
  </head>     
  <body>     
  <a   href="jsp/do_download.jsp">点击下载</a>     
  </body>     
  </html>  
  
  <%@   page   contentType="text/html;charset=utf-8"     
  import="com.jspsmart.upload.*"   %><%     
  //   新建一个SmartUpload对象     
  SmartUpload   su   =   new   SmartUpload();     
  //   初始化     
  su.initialize(pageContext);     
  //   设定contentDisposition为null以禁止浏览器自动打开文件，     
  //保证点击链接后是下载文件。若不设定，则下载的文件扩展名为     
  //doc时，浏览器将自动用word打开它。扩展名为pdf时，     
  //浏览器将用acrobat打开。     
  su.setContentDisposition(null);     
  //   下载文件     
  su.downloadFile("/upload/如何赚取我的第一桶金.doc");     
  %>     
    
  