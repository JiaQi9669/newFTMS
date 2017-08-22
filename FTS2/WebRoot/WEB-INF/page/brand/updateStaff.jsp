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
		<div style="color: red;">${msg }</div>
			<table class="table table-striped table-bordered table-hover text-center rs-font">
					<thead>
						<tr class="info">
							<h1><td colspan="4" class="text-left">员工设置</td></h1>
						</tr>
					</thead>
					<tbody>
					<form action="User_updateStaff" method="post">
						<input name="id" value="${user.id }" hidden>
					<%-- <div style="color: red;">${msg }</div>
						<tr>
							<td>账号：</td>
							<td>${user.userName }</td>
						</tr>
						<tr>
							<td>密码：</td>
							<td>
								<input type="text" value="${user.password }" class="form-control" name="password" placeholder="password">
							</td>
						</tr>
						<tr>
							<td>电话：</td>
							<td>
							<input type="number" value="${user.phone }" class="form-control" name="phone" placeholder="phone">
							</td>
						</tr>
						<tr>
							<td>真实姓名：</td>
							<td>
							<input type="text" value="${user.realName }" class="form-control" name="realName" placeholder="name">
							</td>
						</tr>
						<tr>
							<td>员工类型：</td>
							<td>
								<select class="form-control" name="role" style="height:100%;">
									
										<option <c:if test="${user.role == 1 }">selected="selected"</c:if> value="1">超级管理员</option>
										<option <c:if test="${user.role == 2 }">selected="selected"</c:if> value="2">管理员</option>
										<option <c:if test="${user.role == 3 }">selected="selected"</c:if> value="3">普通员工</option>
								</select>
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2"><button class="btn btn-info" type="submit" style="width: 30%;">修改</button></td>	
						</tr>
					</tfoot> --%>
						<tr>
							<td>账号：</td>
								<td>${user.userName }</td>
							<td>真实姓名：</td>
							<td>
								<input type="text" value="${user.password }" class="form-control" name="realName" placeholder="password">
							</td>
						</tr>
						<tr>
							<td>密码：</td>
							<td>
								<input type="text" value="${user.password }" class="form-control" name="password" placeholder="password">
							</td>
							<td>电话：</td>
							<td>
								<input type="number" value="${user.phone }" class="form-control" name="phone" placeholder="phone">
							</td>
						</tr>
						<tr>
							<td>员工类型：</td>
							<td>
								<select class="form-control" name="role" style="height:100%;">
										<option <c:if test="${user.role == 1 }">selected="selected"</c:if> value="1">超级管理员</option>
										<option <c:if test="${user.role == 4 }">selected="selected"</c:if> value="4">立项人</option>
										<option <c:if test="${user.role == 2 }">selected="selected"</c:if> value="2">管理员</option>
										<option <c:if test="${user.role == 3 }">selected="selected"</c:if> value="3">普通员工</option>
								</select>
							</td>
							
							<td>是否允许查看银行模块：</td>
							<td>
							<select class="form-control" name="canBrank" style="height:100%;">
									<option <c:if test="${user.canBrank == 0 }">selected="selected"</c:if> value="0">否</option>
									<option <c:if test="${user.canBrank == 1 }">selected="selected"</c:if> value="1">是</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>是否允许查看许可证模块：</td>
							<td>
							<select class="form-control" name="canBusines" style="height:100%;">
									<option <c:if test="${user.canBusines == 0 }">selected="selected"</c:if> value="0">否</option>
									<option <c:if test="${user.canBusines == 1 }">selected="selected"</c:if> value="1">是</option>
								</select>
							</td>
							
							
							<td>是否允许查看招投标模块：</td>
							<td>
							<select class="form-control" name="canBid" style="height:100%;">
									<option <c:if test="${user.canBid == 0 }">selected="selected"</c:if> value="0">否</option>
									<option <c:if test="${user.canBid == 1 }">selected="selected"</c:if> value="1">是</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>是否允许查看清关模块：</td>
							<td>
								<select class="form-control" name="canClear" style="height:100%;">
									<option <c:if test="${user.canClear == 0 }">selected="selected"</c:if> value="0">否</option>
									<option <c:if test="${user.canClear == 1 }">selected="selected"</c:if> value="1">是</option>
								</select>
							</td>
							<td>是否允许查看商检：</td>
							<td>
								<select class="form-control" name="canInsp" style="height:100%;">
									<option <c:if test="${user.canInsp == 0 }">selected="selected"</c:if> value="0">否</option>
									<option <c:if test="${user.canInsp == 1 }">selected="selected"</c:if> value="1">是</option>
								</select>
							</td>	
						</tr>
						
						<tr>
							<td>是否允许查看保险模块：</td>
							<td>
								<select class="form-control" name="canInsu" style="height:100%;">
									<option <c:if test="${user.canInsu == 0 }">selected="selected"</c:if> value="0">否</option>
									<option <c:if test="${user.canInsu == 1 }">selected="selected"</c:if> value="1">是</option>
								</select>
							</td>
							<td>是否允许查看物流模块：</td>
							<td>
								<select class="form-control" name="canLogis" style="height:100%;">
									<option <c:if test="${user.canLogis == 0 }">selected="selected"</c:if> value="0">否</option>
									<option <c:if test="${user.canLogis == 1 }">selected="selected"</c:if> value="1">是</option>
								</select>
							</td>	
						</tr>	
					</tbody>
					<tfoot>
						<tr>
							<td colspan="4"><button class="btn btn-info" type="submit" style="width: 30%;">修改</button></td>	
						</tr>
					</tfoot>
					</form>
				</table>
		</div>
	</body>
</html>