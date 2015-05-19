<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testajax.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript" src="/SpringMVC001/js/jquery-2.1.1.min.js"></script>
  <script language="javascript" type="text/javascript"> 
$(document).ready(function() { 
$("#btnSubmit").click(function() { 
Login(); 
}); 
}); 
function Login() { 
if (Check()) { 
LoginSuccess(); 
} 
} 
function Check() { 
if ($("#ksbh").val() == "") { 
alert("准考证号不能为空！"); 
$("#ksbh").focus(); 
return false; 
} 
if ($("#Yzm").val() != $.cookie('ValidateCode')) { 
alert("验证码错误！") 
$("#Yzm").focus(); 
return false; 
} 
return true; 
} 
function LoginSuccess() { 
$.ajax({ 
type: "POST", 
url: "/zk/zkcj201204a", 
data: { ksbh: $("#ksbh").val()}, 
beforeSend: function() { $("#msg").html("loading......正在提交请稍候。"); }, 
success: function(data) { 
$("#msg").html(data).show(); 
document.getElementById("valiCode").src = document.getElementById("valiCode").src+'?'; 
} 
}); 
} 
</script> 
  
  <body>
    This is my JSP page. <br>
    <div id="lmain"> 
<div><span class="s1">准考证号：</span><span class="s2"><input id="ksbh" maxlength="12" name="ksbh" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" onkeyup="value=value.replace(/[^\d]/g,'')" type="text" value="" /></span></div> 
<div><span class="s1">验证码：</span><span class="s3"><</span></div> 
<div style=" text-align:center;"><input type="button" id="btnSubmit" value="查询" /> </div> 
</div> 
<div id="msg" style=" width:600px;text-align:center; margin-top:20px;"></div> 
  </body>
</html>
