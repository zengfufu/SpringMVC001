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
  <script type="text/javascript">
  		function adduser(){
  		var form =document.forms[0];
  		form.action="/SpringMVC001/user3/adduser"
  		form.method="post";
  		form.submit();
  		}
  	
  	{age:"11"}
  		
  		
  </script>
  
  <body>
  
  该界面是用来测试SpringMVC中参数传递的<br><br><br>
    使用注解跳转到该页面   地址是http://localhost:8080/SpringMVC001/user2/adduser <br><br><br>
    ${s}
    
    <form action="">
    	姓名：<input type="text" name="username">
    	年龄：<input type="text" name="age">
    		<input type="button" value="添加" onclick="adduser()">
    </form>
    <h1>添加用户</h1>
    <form action="">
    
    </form>
  </body>
</html>
