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
							<h1><td colspan="2" class="text-left">个人设置</td></h1>
						</tr>
					</thead>
					<tbody>
					<form action="User_userStaff" method="post">
					<div style="color: red;">${msg }</div>
						<tr>
							<td>账号：</td>
							<td>${user.userName }</td>
						</tr>
						<tr>
							<td>密码：</td>
							<td>
								<input type="password" value="${user.password }" class="form-control" name="password" placeholder="password">
							</td>
						</tr>
						<tr>
							<td>电话：</td>
							<td>
							<input type="number" value="${user.phone }" class="form-control" name="phone" placeholder="phone">
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2"><button class="btn btn-info" type="submit" style="width: 30%;">修改</button></td>	
						</tr>
					</tfoot>
					</form>
				</table>
		</div>
	</body>
</html>