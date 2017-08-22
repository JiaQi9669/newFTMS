<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	描述：商检 已完结 二级界面
-->
<html lang="zh-CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title> </title>
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/mystyle.css" rel="stylesheet" />
		
		<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
		
		<script src="js/bootstrap-datetimepicker.min.js"></script>
		<script src="js/bootstrap-datetimepicker.zh-CN.js"></script>
		
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
				<label>供货商：</label>
				<p>${project.supplier }</p>
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
				<label>外贸金额 &币种：</label>
				<p>${project.outMoney }</p>
			</div>
			<div>
				<label>最终用户：</label>
				<p>${project.finalUser }</p>
			</div>
		</div>
		<br />
		<h3>商检信息</h3>
		<hr />
		<form class="form-inline" enctype="multipart/form-data"  action="Logis_projectLogis" method="post">
			<input value="${project.brank.id }" name="id" hidden>
			<div class="form-group">
				<label for="">报检号:</label>
				<input name="inspectionNum" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">商检检验机构:</label>
				<input name="inspMech" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">检验日期:</label>
				<input name="inspDate" value="" type="text" class="form-control date" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">检验形式:</label>
				<input name="inspStyle" value="" type="text" class="form-control" placeholder="" />
			</div>
			<br />
			<h3>厂家信息</h3>
			<hr />
			<div class="form-group">
				<label for="">装机工程师:</label>
				<input name="installName" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">电话:</label>
				<input name="installPhone" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">场地工程师:</label>
				<input name="placeName" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">电话:</label>
				<input name="placePhone" value="" type="text" class="form-control" placeholder="" />
			</div>
			<br />
			<h3>费用信息</h3>
			<hr />
			<div class="form-group">
				<label for="">商检费:</label>
				<input name="inspMoney" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-textarea">
				<label for="">备注：</label>
				<textarea name="info" class="" rows="4" placeholder=""></textarea>
			</div>
			<br />
			<h3>上传资料</h3>
			<hr />
			<div class="form-group">
				<label for="" id="">报检单：</label>
				<input type="text" name="file1" id="have1" value="0" hidden>
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
							if(filePath != null||filePath != ''){
								$("#have1").attr("value","1");
							}
							if(filePath == null||filePath == ''){
								$("#have1").attr("value","0");
							}
						});
					});
				</script>
			<c:if test="${project.insp.inspFile != null }">
				<a href="${ip }${project.insp.inspFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
			</c:if>
			</div>
			<div class="form-group">
				<label for="" id="">验收报告：</label>
				<input type="text" name="file2" id="have2" value="0" hidden>
				<input name="image" type="file" id="file2" accept="application/pdf" style="display: none;" />
				<div class="input-group">
					<input type="text" class="form-control" id="text2" placeholder="" readonly>
					<div class="input-group-addon btn btn-default" id="btn2">
						<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> 选择文件
					</div>
				</div>
				<script>
					$(document).ready(function() {
						$("#btn2").click(function() {
							$("#file2").click();
						});
						$("#file2").change(function() {
							var filePath = $(this).val();
							$("#text2").val(filePath);
							if(filePath != null||filePath != ''){
								$("#have2").attr("value","1");
							}
							if(filePath == null||filePath == ''){
								$("#have2").attr("value","0");
							}
						});
					});
				</script>
			<c:if test="${project.insp.overInsp != null }">
				<a href="${ip }${project.insp.overInsp}" target="_Blank" class="btn btn-default" type="button">查阅</a>
			</c:if>
			</div>
			<div class="form-group">
				<label for="" id="">商检证：</label>
				<input type="text" name="file3" id="have3" value="0" hidden>
				<input name="image" type="file" id="file3" accept="application/pdf"  style="display: none"/>
				<div class="input-group">
					<input type="text" class="form-control" id="text3" placeholder="" readonly>
					<div class="input-group-addon btn btn-default" id="btn3">
						<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> 选择文件
					</div>
				</div>
				<script>
					$(document).ready(function() {
						$("#btn3").click(function() {
							$("#file3").click();
						});
						$("#file3").change(function() {
							var filePath = $(this).val();
							$("#text3").val(filePath);
							if(filePath != null||filePath != ''){
								$("#have3").attr("value","1");
							}
							if(filePath == null||filePath == ''){
								$("#have3").attr("value","0");
							}
						});
					});
				</script>
			<c:if test="${project.insp.inspCertFile != null }">
				<a href="${ip }${project.insp.inspCertFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
			</c:if>
			</div>
			<hr />
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
		<script type="text/javascript">
					$('.date').datetimepicker({
						language: 'zh-CN', //显示中文
						format: 'yyyy-mm-dd', //显示格式
						minView: "month", //设置只显示到月份
						initialDate: new Date(), //初始化当前日期
						autoclose: true, //选中自动关闭
						todayBtn: true //显示今日按钮
					});
				</script>
	</body>
</html>