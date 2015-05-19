<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <!-- <script type="text/javascript" src="/SpringMVC001/js/jquery-2.1.1.min.js"></script> -->
  <script type="text/javascript" src="/SpringMVC001/js/jquery-1.7.1.min.js"></script>
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
  			//var username="SDFSDF";
  			//var age="123456";
  				var userName=$("#userName").attr("value");
  				var age=$("#age").attr("value");
  				
  				var user ={username:userName,age:age};
  				
  				$.ajax(
  					{
  						url:"/SpringMVC001/jsonuser/addUserJson",
  						type:"post",
  						data:user,
  						success:function(a){
  						  //alert("usrname====" + a.username + "age====" + a.age);
  						  alert("userName--->" + a.username + "   age--->" + a.age );
  						}
  					});
  				
  			});
  		});
  		
  		
  </script>
  
<!-- <script type="text/javascript">
	$(document).ready(function(){
		$("#add").click(function(){
			var userName = $("#userName").attr("value");
			var age =$("#age2").attr("value");
			
			var user = {username:userName,age:age};
			
			$.ajax({
				url:"/SpringMVC001/jsonuser/addUserJson",
				type:"post",
				data:user,
				success:function(a){
					//alert("userName--->" + a.userName + "age--->" + a.age );
					
				}
			});
			
			
			
		});
	});
</script> -->
  
  <body>
  

    
    
    <!-- 
    	姓名：<input type="text" name="username2" id="userName" >
    	年龄：<input type="text" name="age2" id="age" >
    		<input type="button" value="添加"  name="add" id="add">
   
    <h1>json添加用户</h1>
    <form action="">
    
    </form> -->
    
    
	<h>json添加用户</h>
	姓名：<input type="text" id="userName" name="userName">
	年龄：<input type="text" id="age" name="age">
	<input type="button" id="add" value="添加">
	

  </body>
</html>
