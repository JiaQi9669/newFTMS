<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%-- <!DOCTYPE html>
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
							<h1><td colspan="2" class="text-left">增加员工</td></h1>
						</tr>
					</thead>
					<tbody>
					<div style="color: red;">${msg }</div>
					<form action="User_addStaff" method="post">
						<tr>
							<td>账号：</td>
							<td>
								<input type="text" class="form-control" name="userName" placeholder="userName">
							</td>
						</tr>
						<tr>
							<td>密码：</td>
							<td>
								<input type="password" class="form-control" name="password" placeholder="password">
							</td>
						</tr>
						<tr>
							<td>电话：</td>
							<td>
							<input type="number" class="form-control" name="phone" placeholder="phone">
							</td>
						</tr>
						<tr>
							<td>真实姓名：</td>
							<td>
							<input type="text" class="form-control" name="realName" placeholder="realName">
							</td>
						</tr>
						<tr>
							<td>员工类型：</td>
							<td>
								<select class="form-control" name="role" style="height:100%;">
									<option value="3">普通员工</option>
									<option value="2">管理员</option>
									<option value="1">超级管理员</option>
								</select>
							</td>
							</tr>
							<td>XXX：</td>
							<td>
							<select class="form-control" name="select_1" style="height:100%;">
									<option value="0">1</option>
									<option value="1">2</option>
									<option value="2">3</option>
									<option value="3">4</option>
								</select>
							</td>
							
							<td>XXX：</td>
							<td>
							<select class="form-control" name="select_2" style="height:100%;">
									<option value="0">1</option>
									<option value="1">2</option>
									<option value="2">3</option>
									<option value="3">4</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>XXX：</td>
							<td>
							<select class="form-control" name="select_3" style="height:100%;">
									<option value="0">1</option>
									<option value="1">2</option>
									<option value="2">3</option>
									<option value="3">4</option>
								</select>
	 --%>						<!-- </td>
							
							
							<td>XXX：</td>
							<td>
							<select class="form-control" name="select_4" style="height:100%;">
									<option value="0">1</option>
									<option value="1">2</option>
									<option value="2">3</option>
									<option value="3">4</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>XXX：</td>
							<td>
								<select class="form-control" name="select_5" style="height:100%;">
									<option value="0">1</option>
									<option value="1">2</option>
									<option value="2">3</option>
									<option value="3">4</option>
								</select>
							</td>
							<td>XXX：</td>
							<td>
								<select class="form-control" name="select_6" style="height:100%;">
									<option value="0">1</option>
									<option value="1">2</option>
									<option value="2">3</option>
									<option value="3">4</option>
								</select>
							</td>	
						</tr>
						
						<tr>
							<td>XXX：</td>
							<td>
								<select class="form-control" name="select_7" style="height:100%;">
									<option value="0">1</option>
									<option value="1">2</option>
									<option value="2">3</option>
									<option value="3">4</option>
								</select>
							</td>
							<td>XXX：</td>
							<td>
								<select class="form-control" name="select_8" style="height:100%;">
									<option value="0">1</option>
									<option value="1">2</option>
									<option value="2">3</option>
									<option value="3">4</option>
								</select>
							</td>	
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2"><input class="btn btn-info" type="submit" value="添加账户" style="width: 30%;"></input></td>	
						</tr>
					</tfoot>
					</form>
				</table>
		</div>
	</body>
</html> -->

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
			.rs-content{margin-top: 80px;width: 700px;}
			.rs-font{font-size: 16px;}
		</style>
	</head>
	<body>
		<div class="rs-content center-block">
			<table class="table table-striped table-bordered table-hover text-center rs-font">
					<thead>
						<tr class="info">
							<h1><td colspan="4" class="text-left">个人设置</td></h1>
						</tr>
					</thead>
					<div style="color: red;">${msg }</div>
					<tbody>
			<form action="User_addStaff" method="post">
						<tr>
							<td>账号：</td>
							<td>
								<input type="text" class="form-control" name="userName" placeholder="userName">
							</td>
							<td>真实姓名：</td>
							<td>
								<input type="text" class="form-control" name="realName" placeholder="realName">
							</td>
						</tr>
						<tr>
							<td>密码：</td>
							<td>
								<input type="password" class="form-control" name="password" placeholder="password">
							</td>
							<td>电话：</td>
							<td>
								<input type="text" name="phone" class="form-control" placeholder="phone">
							</td>
						</tr>
						<tr>
							<td>员工类型：</td>
							<td>
								<select class="form-control" name="role" style="height:100%;">
									<option value="3">普通员工</option>
									<option value="4">立项人</option>
									<option value="2">管理员</option>
									<option value="1">超级管理员</option>
								</select>
							</td>
							
							<td>是否允许查看银行模块：</td>
							<td>
							<select class="form-control" name="canBrank" style="height:100%;">
									<option value="0">否</option>
									<option value="1">是</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>是否允许查看许可证模块：</td>
							<td>
							<select class="form-control" name="canBusines" style="height:100%;">
									<option value="0">否</option>
									<option value="1">是</option>
								</select>
							</td>
							
							
							<td>是否允许查看招投标模块：</td>
							<td>
							<select class="form-control" name="canBid" style="height:100%;">
									<option value="0">否</option>
									<option value="1">是</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>是否允许查看清关模块：</td>
							<td>
								<select class="form-control" name="canClear" style="height:100%;">
									<option value="0">否</option>
									<option value="1">是</option>
								</select>
							</td>
							<td>是否允许查看商检：</td>
							<td>
								<select class="form-control" name="canInsp" style="height:100%;">
									<option value="0">否</option>
									<option value="1">是</option>
								</select>
							</td>	
						</tr>
						
						<tr>
							<td>是否允许查看保险模块：</td>
							<td>
								<select class="form-control" name="canInsu" style="height:100%;">
									<option value="0">否</option>
									<option value="1">是</option>
								</select>
							</td>
							<td>是否允许查看物流模块：</td>
							<td>
								<select class="form-control" name="canLogis" style="height:100%;">
									<option value="0">否</option>
									<option value="1">是</option>
								</select>
							</td>	
						</tr>	
					</tbody>
					<tfoot>
						<tr>
							<td colspan="4"><button class="btn btn-info" type="submit" style="width: 30%;">保存</button></td>	
						</tr>
					</tfoot>
					</form>
				</table>
		</div>
	</body>
</html>