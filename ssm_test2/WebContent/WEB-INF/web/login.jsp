<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript" src="${ctx }/resources/bootstrap/js/jquery-3.0.0.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ctx}/resources/bootstrap/css/dark.css" />
<style type="text/css">
	
	body{
		font-family: "微软雅黑";
	}
	#phoneErr,#userErr,#ageErr,#sexErr,#usernameErr,#passwordErr{
	color:green
	}
	.redstar{
		color:red;
	}
</style>
<script type="text/javascript">
$(function(){
	$("#logid").blur(function(){
		var u = $("#logId").val();
			$.post("chackLoginById" , {logid:u} , function(data){
				if(data == 'true'){
					alert(u)
					$("#usernameErr").html("用户名验证成功");
				}else{
					$("#usernameErr").html("");
				}
			});
		});
	});

</script>
</head>
<body>
	<form action="chacklog" method="post" class="dark-matter">
		<h1>Contact Form
		<span>Please fill all the texts in the fields.</span>
		</h1>
		<label>
		<span>Your Logid :</span>
		<input id="logId" type="text" name="logId" placeholder="Your Full logid" />
		  <div id="usernameErr"></div>
		</label>
	
		<label>
		<span>Your Pswd :</span>
		<input id="pswd" type="password" name="pswd" placeholder="Valid Email Pswd" />
		</label>
		
		<label>
		<span>&nbsp;</span>
		<input type="submit" class="button" value="Send" />
		</label>
		</form>
	
</body>
</html>