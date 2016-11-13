<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function doSubmit(){
		var index =parent.layer.getFrameIndex(window.name);
		$.post("${ctx}/updateRest",{
				id:$("#id").val(),
				restaurantName:$("#restaurantName").val() , 
				address:$("#address").val(),
				phone:$("#phone").val()
				}  , function(data){
				
			// parent = main.jsp
			parent.$("#iframepage").prop("src", '${ctx }/getRestList');
			parent.layer.close(index);
		});
	}

</script>

</head>
<body>
		
		<div id="maindiv" style="width:350px;margin:10px auto;">
	
		<form id="myform" class="form-horizontal" role="form" action="${ctx }/updateRest" method="post">
		
		<input type="hidden" id="id" name="id" value="${person.id}" />
	
	 	<div class="form-group">
	  	<label for="restaurantName" class="col-xs-3 control-label">饭店名</label>
	    <div class="col-xs-8">
	      <input value="${person.name}" type="text" class="form-control" name="restaurantName" id="restaurantName" placeholder="饭店名">
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	  	<label for="address" class="col-xs-3 control-label">地址</label>
	    <div class="col-xs-8">
	      <input value="${person.age}" type="text" class="form-control" name="address" id="address" placeholder="地址">
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	    <label for="phone" class="col-xs-3 control-label">电话</label>
	    <div class="col-xs-8">
	      <input value="${person.hobby1.hname}" type="text" class="form-control" name="phone" id="phone" placeholder="电话">
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <div class="col-xs-offset-3 col-xs-7">
	     
	      <button onclick="doSubmit()" type="button" class="btn btn-default">修改</button>
	    </div>
	  </div>
	  
	  
	</form>
	</div>
	</body>
</html>