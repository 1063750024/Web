<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
				
			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu" id="menus">
					<!-- 
					<label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
				 	-->

					 	<li class="nav-header hidden-tablet" onclick="$('#test1').toggle(500);">后台管理</li>
						<li>
							<ul class="nav nav-tabs nav-stacked" id="test1">
								<li><a class="ajax-link" href="#"><i class="icon-home"></i><span class="hidden-tablet">用户管理</span></a></li>
								<li><a class="ajax-link" href="#"><i class="icon-eye-open"></i><span class="hidden-tablet">新闻管理</span></a></li>
								<li><a class="ajax-link" href="#"><i class="icon-edit"></i><span class="hidden-tablet"> 权限管理</span></a></li>
								<li><a class="ajax-link" href="#"><i class="icon-list-alt"></i><span class="hidden-tablet">商品管理</span></a></li>
								<li><a class="ajax-link" href="#"><i class="icon-font"></i><span class="hidden-tablet">商品套餐管理</span></a></li>
								<li><a class="ajax-link" href="#"><i class="icon-picture"></i><span class="hidden-tablet">基础信息</span></a></li>
								<li><a class="ajax-link" href="#"><i class="icon-picture"></i><span class="hidden-tablet">数据字典</span></a></li>
							</ul>
						</li>
					</ul>


				</div><!--/.well -->
			</div><!--/span-->
			<!-- left menu ends -->
			
  </body>
</html>
