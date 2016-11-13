<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${ctx }/resources/css/dashboard.css" rel="stylesheet">
<script type="text/javascript" src="${ctx }/resources/layer/layer.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx }/resources/layer/skin/layer.css" />

	<style>
			html, body{ margin:0;padding:0; height:100%; width: 100%;}
		</style>
		<script>
			
			function doClick(url){
				$("#iframepage").prop("src", url);
			}
			
		</script>
		<script type="text/javascript">
	
	function doClick(url){
		$("#iframepage").prop("src", url);
	}
	function say(id){
		layer.open({
			title:'饭店编辑',
			closeBtn:2,
			type:2,
			skin:'layui-layer-rim',
			area:['420px','440px'],
			content:'${ctx}/restedit?id='+id,
		});
	}
	function callMenu(id){
		layer.open({
			title:'菜单编辑',
			closeBtn:2,
			type:2,
			skin:'layui-layer-rim',
			area:['420px','440px'],
			content:'${ctx}/menuedit?id='+id,
			
		});
	}

</script>
	
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
		        	
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">abukuma<span class="glyphicon glyphicon-user" aria-hidden="true"></span><span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="#"><span class="glyphicon glyphicon-edit" aria-hidden="true">&nbsp;更改密码</a></li>
		            <li><a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true">&nbsp;查询信息</a></li>
		            <li><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true">&nbsp;帮助</a></li>
		          </ul>
		        </li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
 <div class="container-fluid">
	    

		<div class="row">
	      	<!-- 
              	左边侧边栏
              -->
	        <div class="col-sm-4 col-md-2 sidebar">
	          
	          
	          <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			  <div class="panel panel-default">
			   <h4 class="panel-title">
			   <a  role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			      
			    <div class="panel-heading" role="tab" id="headingOne">
			     饭店管理
			    </div></a></h4>
			    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
			      <div class="panel-body">
			      	<ul class="list-group">
			          <li class="list-group-item">
			          	<a target="iframepage" onclick="doClick('${ctx}/goRestAdd')" href="javascript:void(0)">添加饭店</a>
			          	</li>
			          <li class="list-group-item">
			          <a onclick="doClick('${ctx}/person')" href="javascript:void(0)">编辑饭店</a>
			         </li>
			        </ul>
			      </div>
			    </div>
			  </div>
			  
			  <c:if test="${sessionScope.log != null }">
				  <div class="panel panel-default">
				    <h4 class="panel-title">
				          <a  class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
				    <div class="panel-heading" role="tab" id="headingTwo">
				    
				         班级管理
				      
				      
				    </div>  </a></h4>
				    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
				      <div class="panel-body">
				      	<ul class="list-group">
				          <li class="list-group-item"><a onclick="doClick('${ctx}/toAddClasses')" href="javascript:void(0)">添加班级</a>      
				          </li>
				          <li class="list-group-item"><a onclick="doClick('${ctx}/getClassesList')" href="javascript:void(0)">编辑班级</a></li>
				        </ul>
				      </div>
				    </div>
				  </div>
			  </c:if>
			  
			  <div class="panel panel-default">
			  <h4 class="panel-title">
			    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					
			    <div class="panel-heading" role="tab" id="headingThree">
			      
			      	订单管理
			  
			      
			    </div>      </a></h4>
			    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
			      <div class="panel-body">
			      	<ul class="list-group">
			          <li class="list-group-item">
			          <a onclick="doClick('${ctx}/toOrderAdd_rest')" href="javascript:void(0)">创建订单</a>
			          </li>
			          <li class="list-group-item">
			  		  <a onclick="doClick('${ctx}/getTodayOrder')" href="javascript:void(0)">显示当天订单</a>      
			          </li>
			          <li class="list-group-item">
			          <a onclick="doClick('${ctx}/')" href="javascript:void(0)">查找订单</a></li>
			        </ul>
			      </div>
			    </div>
			  </div>
			</div>
	          
	        </div>
	        
	        <!-- 
              	右边主内容
              -->
	        <div>
	          <iframe id="iframepage" name="iframepage" src="${ctx }/home" scrolling="no" width="83%"   scrolling="no" frameborder="0"  onload="this.height=this.contentWindow.document.documentElement.scrollHeight"></iframe>
	        </div>
	      </div>
</div>
	</body>
</html>