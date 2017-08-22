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
		<title>立项</title>
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.css"/>
		<script src="js/jquery-3.0.0.min.js"></script>
		<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="js/Formtext.js"></script>
		<script src="js/rs-table.js"></script>
		<style>
		    .rs-school-height{margin-top: 30px;padding-bottom:20px;}
		    .rs-people:hover{text-decoration: none;cursor: pointer;}
			.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td{line-height: 34px;}
			.form-horizontal .rs-text{text-align: left;}
			.popover{border:1px solid #C00;color:#000;}
			.popover .popover-content{padding:1px 5px;}
			.popover.top>.arrow:after{border-top-color:#C00;}
			.form-inline .form-control .input{
			    display: inline-block;
			    width:20%;
			    vertical-align: middle;
			}
		</style>
	</head>
	<body>
		<!--立项-->
		<div class="container-fluid">	
		<form action="Project_creatProject" method="post">
			<div >
				<h3>立项</h3>
				<hr />
				<div style="color: red;">${msg }</div>
				<input value="${id }" name="id" type="hidden">
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>内部编号：</span>
					<input type="text" class="form-control" name="inNum" id="" placeholder="内部编号">
				</div>
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>外贸合同号：</span>
					<input type="text" class="form-control" name="outNum" id="" placeholder="外贸合同号">
				</div>
	
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>品名：</span>
					<input type="text" class="form-control" name="productName" id="" placeholder="品名">
				</div>	
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>型号：</span>
					<input type="text" class="form-control" name="models" id="" placeholder="型号">
				</div>	
				
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>数量：</span>
					<input type="text" class="form-control" name="projectNum" id="" placeholder="数量">
				</div>	
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>外贸金额 &币种：</span>
					<input type="text" class="form-control" name="outMoney" id="" placeholder="外贸金额 &币种">
				</div>	
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>最终用户：</span>
					<input type="text" class="form-control" name="finalUser" id="" placeholder="最终用户">
				</div>
				
			 <div class="container-fluid">	

				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>银行人：</span>
					<select class="form-control" name="bankUserId" style="height:100%;">
						<s:iterator value="users">
							<option value="${id }">${realName }</option>
						</s:iterator>
					</select>
				</div>
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>招投标：</span>
					<select class="form-control" name="bidUserId" style="height:100%;">
						<s:iterator value="users" status="indexs">
							<option value="${id }">${realName }</option>
						</s:iterator>
					</select>
				</div>
	
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>许可证：</span>
					<select class="form-control" name="businesUserId" style="height:100%;">
						<s:iterator value="users" status="indexs">
							<option value="${id }">${realName }</option>
						</s:iterator>
					</select>
				</div>	
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>报关：</span>
					<select class="form-control" name="clearUserId" style="height:100%;">
						<s:iterator value="users" status="indexs">
							<option value="${id }">${realName }</option>
						</s:iterator>
					</select>
				</div>	
				
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>商检：</span>
					<select class="form-control" name="inspUserId" style="height:100%;">
						<s:iterator value="users" status="indexs">
							<option value="${id }">${realName }</option>
						</s:iterator>
					</select>
				</div>	
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>保险：</span>
					<select class="form-control" name="insuUserId" style="height:100%;">
						<s:iterator value="users" status="indexs">
							<option value="${id }">${realName }</option>
						</s:iterator>
					</select>
				</div>	
				
				<div class="col-md-3 col-sm-3  col-xs-6" >
					<span>物流：</span>
					<select class="form-control" name="logisUserId" style="height:100%;">
						<s:iterator value="users" status="indexs">
							<option value="${id }">${realName }</option>
						</s:iterator>
					</select>
				</div>
				</div>
				<div class="col-md-3 col-sm-3  col-xs-6">
				<br />
					<input class="btn btn-default rs-modalBtn" type="submit"></input>
				</div>	
			</div>	
			</form>
		</div>
	</body>
</html>