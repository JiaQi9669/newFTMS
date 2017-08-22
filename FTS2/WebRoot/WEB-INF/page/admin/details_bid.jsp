<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--
	作者：wanglinhao
	时间：2017-08-13
	描述：招投标 已完结 二级界面
-->
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>Bootstrap 101 Template</title>

		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<link href="css/mystyle.css" rel="stylesheet" />

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	</head>

	<body class="container-fluid">
		<h3>基本信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>内部编号：</label>
				<p>${project.inNum }</p>
			</div>
			<div>
				<label>品名：</label>
				<p>${project.productName}</p>
			</div>
			<div>
				<label>数量：</label>
				<p>${project.projectNum }</p>
			</div>
		</div>
		<br />
		<h3>招投标信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>招标单位：</label>
				<p>${project.bid.bidCompany }</p>
			</div>
			<div>
				<label>招标编号：</label>
				<p>${project.bid.bidNum }</p>
			</div>
			<div>
				<label>业主：</label>
				<p>${project.bid.owner }</p>
			</div>
			<div>
				<label>开标日期：</label>
				<p>${project.bid.openBidDate }</p>
			</div>
		</div>
		<br />
		<h3>费用信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>招标费：</label>
				<p>${project.bid.bidMoney }</p>
			</div>
		</div>
		<br />
		<h3>上传资料 </h3>
		<hr />
		<label>招投标评标结果：</label>
		<c:if test="${project.bid.bidResultFile != null }">
			<a href="${ip }${project.bid.bidResultFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br />
		<label>中标通知书：</label>
		
		<c:if test="${project.bid.bidTellFile != null }">
			<a href="${ip }${project.bid.bidTellFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		
		<br /><br /><br /><br />
	</body>
</html>