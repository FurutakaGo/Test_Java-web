<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript" src="${ctx }/resources/bootstrap/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/bootstrap/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="${ctx}/resources/bootstrap/css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#div1{
		margin:100px auto;
		width:500px;
	}
	.navbar{
		background:#ADADAD;
	}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">学生管理系统</a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="javascript:void(0)">V1.0</a></li>
	        
	      </ul>
	     
	      <ul class="nav navbar-nav navbar-right">
	        <li class="dropdown">
	        	
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${logid }<span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;${sessionScope.teacherUser.name }<span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="#"><span class="glyphicon glyphicon-edit" aria-hidden="true">&nbsp;更改密码</a></li>
	            <li><a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true">&nbsp;查询信息</a></li>
	            <li><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true">&nbsp;帮助</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a target="_self" href="login" onclick="window.location.href='ExitServlet'"><span class="glyphicon glyphicon-off" aria-hidden="true">&nbsp;注销</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div id="div2"> 
	<div id="div1">
		<table class="table table-hover">
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>年龄</th>
				<th>爱好</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${plist }" var="obj">
				<tr>
					<td>${obj.id }</td>
					<td>${obj.name }</td>
					<td>${obj.sex }</td>
					<td>${obj.age }</td>
					<td>${obj.hobby1.hname }</td>
					<th><a href="person2?id=${obj.id }&method=goupdate">更新</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</body>
</html>