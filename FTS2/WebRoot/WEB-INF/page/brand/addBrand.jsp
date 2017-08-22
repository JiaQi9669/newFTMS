<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<title>manage-school</title>
		<link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
   		<script src="js/jquery-3.0.0.min.js"></script>
   		<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<style type="text/css">
			.rs-content{margin-top: 80px;width: 500px;}
			.rs-font{font-size: 16px;}
		</style>
	</head>
	<body>
		<div class="rs-content center-block">
			<table class="table table-striped table-bordered table-hover text-center rs-font">
					<thead>
						<tr class="info">
							<h1><td colspan="2" class="text-left">增加品牌</td></h1>
						</tr>
					</thead>
					<tbody>
					<div style="color: red;">${msg }</div>
					<form action="Brand_addBrand" method="post">
						<tr>
							<td>品牌名称：</td>
							<td>
								<input type="text" class="form-control" name="name" placeholder="name">
							</td>
						</tr>
						
						<td>品牌负责人：</td>
							<td>
								<select class="form-control" name="userId" style="height:100%;">
									<s:iterator value="users" status="indexs">
										<option value="${id }">${realName }</option>
									</s:iterator>
								</select>
							</td>
						
						
						<tr>
							<td>备注：</td>
							<td>
								<input type="text" class="form-control" name="info" placeholder="info">
							</td>
						</tr>
						
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2"><input class="btn btn-info" type="submit" value="添加品牌" style="width: 30%;"></input></td>	
						</tr>
					</tfoot>
					</form>
				</table>
		</div>
	</body>
</html>