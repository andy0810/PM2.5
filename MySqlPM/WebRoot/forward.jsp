<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>PM2.5监控系统</title>

  </head>
  
  <body>
    <script type="text/javascript">
      
      window.location.href="${pageContext.request.contextPath }/findByCity.action?cityName=北京";
     
    </script>
    
  </body>
</html>
