<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
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
  		$(document).ready(function(){
  			$("#add").click(function(){
  				var username=$("#username").attr("value");
  				var age=$("#age").attr("value");
  				
  				var user ={username:username,age:age};
  				
  				$.ajax(
  					{
  						url:"/SpringMVC001/jsonuser/adduser",
  						type:"get",
  						data:user,
  						success:function(data){
  						  alert("usrname===="+data.username+ "age===="+data.age);
  						}
  					})
  				
  			})
  		});
  		
  		var user={username："json测试名字"};
  </script>
  
  <body>
  
  该界面是用来测试SpringMVC中参数传递的<br><br><br>
    
    
    <form action="">
    	姓名：<input type="text" name="username" id="username">
    	年龄：<input type="text" name="age" id="age">
    		<input type="button" value="添加"  name="add">
    </form>
    <h1>json添加用户</h1>
    <form action="">
    
    </form>
  </body>
</html>
