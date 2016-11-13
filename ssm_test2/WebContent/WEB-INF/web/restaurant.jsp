<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>磨店订餐系统-饭店管理页面</title>
<style>
			tr th td{text-align: center;}
			
</style>
<script type="text/javascript">
	
	

	function callParent(id) { 
		parent.say(id); 
	}
	
	
	
</script>

</head>
<body>
	
	<ol class="breadcrumb">
	  <li><a href="${ctx }/home">首页</a></li>
	  <li class="active">编辑饭店</li>
	</ol>
	
	<table class="table table-hover">
	 	
	 	<tr>
	 		<th >编号</th>
	 		<th >饭店名称</th>
	 		<th >地址</th>
	 		<th>上传者</th>
	 		<th>操作</th>
	 	</tr>
	 	
	 	<c:forEach items="${plist}" var="obj">
	 		<tr>
		 		<td>${obj.id}</td>
		 		<td><a href="${ctx}/getMenuList?id=${obj.id}">${obj.name}</a></td>
		 		<td>${obj.name}</td>
		 		<td>${obj.hobby1.hname}</td>
		 		<td>
		 		<c:choose>
		 			<c:when test="${sessionScope.log == obj.name }">
		 				<button onclick="callParent(${obj.id})"  rel="tooltip" title="编辑" type="button" class="btn btn-default">
		 				<span class="glyphicon glyphicon-edit"></span>
		 				</button>
		 				<button  rel="tooltip" title="删除" type="button" class="btn btn-default">
		 				<span class="glyphicon glyphicon-remove"></span>
		 				</button>
		 			</c:when>
		 			<c:otherwise>
		 				<span class="label label-warning">不可编辑</span>
		 			</c:otherwise>
		 		</c:choose>
		 	</tr>
	 	</c:forEach>
	 	
	 	
	</table>
	
</body>
</html>