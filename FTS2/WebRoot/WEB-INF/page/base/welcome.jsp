<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<title>欢迎</title>
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
   		<style type="text/css">	
   			body{
   				margin: 0;
   				padding: 0;
   				height: auto;
   				background: #fff;
   			}
   			.rs-headH1{
   				color:#0BF; 
   				font-size: 50px;
   			}
   			.rs-fontColor{color: #0BF;}
   			.rs-content{
   			    border-radius: 30px;
			    background: rgb(255,255,255);
			    padding-bottom: 30px;
			    width: 400px;
			    margin-top: 50px;
			    overflow: hidden;
   			}
   			.container-fluid .row{margin-top: 50px;}
   			.well{margin-bottom: 0;}
			@media (min-width: 992px){.rs-headH1{margin-top: 100px;}.rs-content{margin-top: 0;}.container-fluid .row{margin-top: 150px;}}
   		</style>	
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-offset-3 col-md-6 col-xs-12">	
					<h1 class="center-block rs-headH1 text-center">欢迎使用<br />
						河南易则鑫贸易有限公司</br>业务信息管理中心</h1>
				</div>
			</div>
		</div>
	</body>
</html>