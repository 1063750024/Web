<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  
  
  <!--向四个作用域中增加属性  -->
   <%
      pageContext.setAttribute("pageKey", "pageValue");
      request.setAttribute("requestKey", "requestValue");
      session.setAttribute("sessionKey", "sessionValue");
      application.setAttribute("applicationKey", "applicationValue");
    %>
  
   <!--之前获取的方式  --> 
  <%=pageContext.getAttribute("pageKey") %><br/>
  <%=request.getAttribute("requestKey") %><br/>
  <%=session.getAttribute("sessionKey") %><br/>
  <%=application.getAttribute("applicationKey") %><br/>
  <hr/>
   <!--现在通过el表达式获取的方式  --> 
    ${pageScope.pageKey}<br/>
    ${requestScope.requestKey}<br/>
    ${sessionScope.sessionKey}<br/>
    ${applicationScope.applicationKey}<br/>
    <hr/>
   <!--现在通过el表达式获取的方式  --> 
    ${pageKey}<br/>
    ${requestKey}<br/>
    ${sessionKey}<br/>
    ${applicationKey}<br/>
  
  </body>
</html>
