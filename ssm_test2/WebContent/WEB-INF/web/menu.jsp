<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	function callParent(id) { 
		parent.callMenu(id); 
	}
	
</script>

</head>
<body>
	
	<ol class="breadcrumb">
	  <li><a href="${ctx }/home">首页</a></li>
	  <li><a href="${ctx }/person">编辑饭店</a></li>
	  <li class="active">${plist.name}-菜单</li>
	</ol>
	
	<table class="table table-hover">
	 	<tr>
	 		<th width="100px">编号</th>
	 		<th width="200px">菜单名称</th>
	 		<th width="100px">价格</th>
	 		<th width="200px">操作</th>
	 	</tr>
	 	
	 		<tr>
		 		<td>${plist.id}</td>
		 		<td>${plist.name}</td>
		 		<td>${plist.age}</td>
		 		<td>
		 		<c:choose>
		 			<c:when test="${sessionScope.log == plist.name}">
		 				<button   onclick="callParent(${plist.id})"  rel="tooltip" title="编辑" type="button" class="btn btn-default">
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
		 		</td>
		 	</tr>
	 	
	 	
	</table>
	
	
	
</body>
</html>