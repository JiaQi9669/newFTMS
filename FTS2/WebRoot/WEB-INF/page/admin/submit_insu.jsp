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
	时间：2017-08-12
	描述：保险人 在执行 二级界面
-->
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title></title>
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
		<div style="color: red;">${msg }</div>
		<h3>基本信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>内部编号：</label>
				<p>${project.inNum }</p>
			</div>
			<div>
				<label>品名：</label>
				<p>${project.productName }</p>
			</div>
			<div>
				<label>数量：</label>
				<p>${project.projectNum }</p>
			</div>
			<div>
				<label>贸易术语：</label>
				<p>${project.clear.tradeTerm }</p>
			</div>
			<div>
				<label>外贸金额 &币种：</label>
				<p>${project.outMoney }</p>
			</div>
		</div>
		<br />
		<h3>保险信息</h3>
		<hr />
		<form class="form-inline" action="Insu_projectInsu" enctype="multipart/form-data" method="post">
			<input name="id" value="${project.bid.id }" hidden>
			<div class="form-group">
				<label for="">被保险人:</label>
				<input name="insuPerson" value="" type="text" class="form-control" id="" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">保险费:</label>
				<input name="insuMoney" value="" type="text" class="form-control" id="" placeholder="" />
			</div>
			<br />
			<h3>上传资料</h3>
			<hr />
			<div class="form-group">
				<label for="" >保险单：</label>
				<input name="image" type="file" id="file1" accept="application/pdf" style="display: none;" />
				<div class="input-group">
					<input type="text" class="form-control" id="text1" placeholder="" readonly>
					<div class="input-group-addon btn btn-default" id="btn1">
						<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> 选择文件
					</div>
				</div>
				<script>
					$(document).ready(function() {
						$("#btn1").click(function() {
							$("#file1").click();
						});
						$("#file1").change(function() {
							var filePath = $(this).val();
							$("#text1").val(filePath);
						});
					});
				</script>
			<c:if test="${project.insu.insuFile != null }">
				<a href="${ip }${project.insu.insuFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
			</c:if>
			</div>
			<div class="form-textarea">
				<label for="">备注：</label>
				<textarea name="info" class="" rows="4" placeholder=""></textarea>
			</div>
			<hr />
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</body>
</html>