<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="/SpringMVC001/js/jquery-1.7.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			var age =$("#age").attr("value");
			
			var user = {username:userName,age:age};
			
			$.ajax({
				url:"/SpringMVC001/jsonuser/addUserJson",
				type:"post",
				data:user,
				success:function(a){
					alert("userName--->" + a.userName + "age--->" + a.age );
					
				}
			});
			
			
			
		});
	});
</script> -->
</head>
<body>
	<h>json添加用户</h>
	姓名：<input type="text" id="userName" name="userName">
	年龄：<input type="text" id="age" name="age">
	<input type="button" id="add" value="添加">
	
</body>
</html>