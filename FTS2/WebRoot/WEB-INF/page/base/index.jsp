<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<title>河南易则鑫贸易有限公司业务信息管理中心</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<style type="text/css">
body,html {
	height: 100%;
	min-width: 560px;
}

.rs-plr5 {
	padding-left: 5px;
	padding-right: 5px;
}

#rs-pageHeader,#rs-pageFooter {
	position: absolute;
	width: 100%;
	z-index: 2;
	min-width: 560px;
}

#rs-pageHeader {
	top: 0;
	background-color: #0BF;
	padding-left: 20px;
	color: #FFF;
	box-shadow: 0 -1px 5px #666 inset;
}

#rs-userInfo {
	position: relative;
	display: block;
	text-align: right;
	vertical-align: middle;
	color: inherit;
}

#rs-userInfo>span {
	color: #666;
}

#rs-pageMain {
	position: relative;
	height: 100%;
	width: 100%;
	padding-top: 103px;
	padding-bottom: 50px;
}

#rs-frameCenter {
	margin-left: 200px;
	height: 100%;
}

#rs-pageFooter {
	bottom: 0;
	text-align: center;
	background-color: #FFF;
}

.rs-tab {
	padding-top: 103px;
	padding-bottom: 50px;
	width: 200px;
	height: 100%;
	border-right: 1px solid #CCCCCC;
	color: #666;
	text-align: center;
	position: absolute;
	top: 0px;
	left: 0px;
	overflow: hidden;
}

.rs-tab .rs-summary {
	line-height: 40px;
	cursor: pointer;
	font-size: 16px;
	position: relative;
	color: #666;
	text-decoration: none;
	border-bottom: #ccc 1px dotted;
	transition: background-color .6s linear;
	-moz-transition: background-color .6s linear;
	-webkit-transition: background-color .6s linear;
	-o-transition: background-color .6s linear;
}

.rs-tab .rs-summary:hover {
	color: #000;
	text-decoration: none;
}

.rs-tab .rs-summary.rs-active {
	background-color: #0BF;
}

.rs-summary .glyphicon {
	top: 2px;
	left: -20px;
}

.rs-tab .rs-detailed {
	display: none;
}

.rs-detailed ul {
	margin: 0;
	padding: 0;
}

.rs-detailed li,.rs-detailed .rs-summary {
	font-size: 14px;
	line-height: 40px;
	list-style: none;
	background-color: rgba(0, 188, 255, .6);
	border-bottom: #ccc 1px dotted;
	text-align: center;
}

.rs-detailed li a,.rs-detailed .rs-summary {
	color: #FFFFFF;
	text-decoration: none;
	display: inline-block;
	width: 100%;
	height: 40px;
}

.rs-detailed li a:hover,.rs-detailed .rs-summary:hover {
	text-decoration: none;
	color: #FFFFFF;
	font-size: 16px;
}

.rs-detailed li a.rs-focus,.rs-detailed .rs-summary.rs-active {
	color: #000000;
	font-size: 16px;
}

.rs-detailed .rs-detailed li {
	background-color: #FFF;
}

.rs-detailed .rs-detailed li a {
	color: #0BF;
	font-size: 16px;
}

.rs-detailed .rs-detailed li a.rs-focus {
	background-color: #f5f5f5;
}
</style>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/rs-tab.js"></script>
<script type="text/javascript">
	var getting = {

		url : 'Message_save',

		dataType : 'json',
		/* data: {"total": 0}, */
		
		success : function(rate) {
			/* console.log(rate); */
			var value=document.getElementById("messageValue");
			value.innerHTML =rate.id;
		}
	};
	window.setInterval(function() {
		$.ajax(getting);
	}, 1800*1000),$.ajax(getting);
</script>
</head>
<body>
	<div id="rs-pageHeader">
		<h1>
			河南易则鑫贸易有限公司<small style="color: #FFF;">业务信息管理中心</small>
		</h1>
		<span id="rs-userInfo"> <span class="rs-plr5">${admins.realName
				}</span> 您好，您的IP是 <span class="rs-plr5">${admins.loginIP }</span> <a
			class="btn btn-link" href="Bar_outLogin"> <span
				class="glyphicon glyphicon-log-out" aria-hidden="true"
				style="padding-right: 5px;"></span> 退出登录 </a> </span>
	</div>
	<div id="rs-pageMain">
		<span class="rs-tab bg-info"> <!--Manager-->
			<div class="rs-summary" id="flip">
				<span class="glyphicon glyphicon-th-list"></span>项目管理
			</div>
			<div class="rs-detailed">
				<ul>
					<c:if test="${admins.role == 2}">
						<li>
							<a href="Message_userMessage" target="center">项目动态
							<span class="badge" id="messageValue"> 6 </span> </a>
						</li>
						<li>
							<a href="Bar_toProjectMy" target="center">我的项目</a>
						</li>
						<li>
							<a href="Bar_toProjectOver" target="center">完结项目</a>
						</li>
						<li>
							<a href="Bar_toBrand" target="center">品牌管理</a>
						</li>
					</c:if>
					<c:if test="${admins.role == 4 }">
						<li>
							<a href="Message_userMessage" target="center">项目动态
							<span class="badge" id="messageValue"> 6 </span> </a>
						</li>
						<li>
							<a href="Bar_toBrand" target="center">品牌管理</a>
						</li>
					</c:if>					
				</ul>
			</div> <!--Apply  -->
			<div class="rs-summary">
				<span class="glyphicon glyphicon-list-alt"></span>模块管理
			</div>
			<div class="rs-detailed">
			
				<c:if test="${admins.canBrank == 1}">
				<div class="rs-summary">银行业务</div>
				<div class="rs-detailed">
					<ul>
						<li><a href="Bar_toBrankOver" target="center">已完结</a>
						</li>
						<li><a href="Bar_toBranking" target="center">在执行</a>
						</li>
					</ul>
				</div>
				</c:if>
				
				<c:if test="${admins.canBid == 1}">
				<div class="rs-summary">招投标</div>
				<div class="rs-detailed">
					<ul>
						<li><a href="Bar_toBidOver" target="center">已完结</a>
						</li>
						<li><a href="Bar_toBiding" target="center">在执行</a>
						</li>
					</ul>
				</div>
				</c:if>
				
				<c:if test="${admins.canBusines == 1}">
				<div class="rs-summary">机电证</div>
				<div class="rs-detailed">
					<ul>
						<li><a href="Bar_toBusinesOver" target="center">已完结</a>
						</li>
						<li><a href="Bar_toBusinesing" target="center">在执行</a>
						</li>
					</ul>
				</div>
				</c:if>
				
				<c:if test="${admins.canClear == 1}">
				<div class="rs-summary">报关</div>
				<div class="rs-detailed">
					<ul>
						<li><a href="Bar_toClearOver" target="center">已完结</a>
						</li>
						<li><a href="Bar_toClearing" target="center">在执行</a>
						</li>
					</ul>
				</div>
				</c:if>

				<c:if test="${admins.canInsp == 1}">
				<div class="rs-summary">商检</div>
				<div class="rs-detailed">
					<ul>
						<li><a href="Bar_toInspOver" target="center">已完结</a>
						</li>
						<li><a href="Bar_toInsping" target="center">在执行</a>
						</li>
					</ul>
				</div>
				</c:if>

				<c:if test="${admins.canInsu == 1}">
				<div class="rs-summary">保险</div>
				<div class="rs-detailed">
					<ul>
						<li><a href="Bar_toInsuOver" target="center">已完结</a>
						</li>
						<li><a href="Bar_toInsuing" target="center">在执行</a>
						</li>
					</ul>
				</div>
				</c:if>
				
				<c:if test="${admins.canLogis == 1}">
				<div class="rs-summary">物流</div>
				<div class="rs-detailed">
					<ul>
						<li><a href="Bar_toLogisOver" target="center">已完结</a>
						</li>
						<li><a href="Bar_toLogising" target="center">在执行</a>
						</li>
					</ul>
				</div>
				</c:if>



				<!--<a class="rs-summary" href="rs-register/reviewParameter.html" target="center">审核参数</a>-->
			</div> <!--School  -->
			<c:if test="${admins.role == 2 || admins.role == 4}">
			
			<div class="rs-summary">
				<span class="glyphicon glyphicon-briefcase"></span>高级查询
			</div> <div class="rs-detailed">
				<ul>
					<li><a href="Bar_search" target="center">增删改查</a></li>
					<!-- <li><a href="#" target="center">报名人数管理</a></li> -->
				</ul>
			</div> <!--Teacher  -->
			</c:if>
			
			<c:if test="${admins.role == 2 || admins.role == 1}">
			<div class="rs-summary">
				<span class="glyphicon glyphicon-inbox"></span>基本设置
			</div>
			<div class="rs-detailed">
				<ul>
					<li><a href="Bar_staffSetting" target="center">员工设置</a>
					</li>
					<li><a href="User_toUserSetting" target="center">个人设置</a>
					</li>
				</ul>
			</div> 
			</c:if>
			
			<!--Student  --> <!--<div class="rs-summary">
				<span class="glyphicon glyphicon-tasks"></span>学生管理
			</div>
			<div class="rs-detailed">
				<div class="rs-summary">学生浏览</div>
				<div class="rs-detailed">
					<ul>
						<li><a href="rs-student/indexPrimaryIn.html" target="center">辖区内小学</a></li>
						<li><a href="rs-student/indexMiddleIn.html" target="center">辖区内中学</a></li>
						<li><a href="rs-student/indexPrimaryOut.html" target="center">辖区外小学</a></li>
						<li><a href="rs-student/indexMiddleOut.html" target="center">辖区外中学</a></li>
					</ul>
				</div>
				<a class="rs-summary" href="rs-student/audit.html" target="center">报名审核</a>
				<div class="rs-summary">批量导入</div>
				<div class="rs-detailed">
					<ul>
						<li><a href="rs-student/dragPrimaryIn.html" target="center">辖区内小学</a></li>
						<li><a href="rs-student/dragMiddleIn.html" target="center">辖区内中学</a></li>
						<li><a href="rs-student/dragPrimaryOut.html" target="center">辖区外小学</a></li>
						<li><a href="rs-student/dragMiddleOut.html" target="center">辖区外中学</a></li>
					</ul>
				</div>
				
			</div>--> <!--Person  --> <!--<div class="rs-summary">
				<span class="glyphicon glyphicon-user"></span>个人管理
			</div>
			<div class="rs-detailed">
				<ul>
					<li><a href="rs-personage/manage-personage.html" target="center">查改</a></li>
				</ul>
			</div>--> <!--end  --> </span>
		<div class="embed-responsive" id="rs-frameCenter">
			<iframe class="embed-responsive-item" name="center"
				src="Bar_toProjectMy" width="100%" height="100%" frameborder="0"></iframe>
		</div>
	</div>
	<div id="rs-pageFooter">
		<p>版权所有:ZZULI Software Innovator &copy; 2017</p>
	</div>

</body>
</html>
