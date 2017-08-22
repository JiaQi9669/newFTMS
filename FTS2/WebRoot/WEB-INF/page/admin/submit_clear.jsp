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
	时间：2017-08-12
	描述：清关 在执行 二级界面
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
				<label>付款方式：</label>
				<p>${project.payStyle }</p>
			</div>
			<div>
				<label>外贸金额 &币种：</label>
				<p>${project.outMoney }</p>
			</div>
		</div>
		<br />
		<h3>货物信息</h3>
		<hr />
		<form class="form-inline" action="Clear_projectClear" method="post"  enctype="multipart/form-data">
			<input value="${project.id }" name="id" hidden>
			<div class="form-group">
				<label for="">清关口岸:</label>
				<input name="clearPort" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">预计到货日期:</label>
				<input name="inGoodDate" value="" type="text" class="form-control date" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">运输方式:</label>
				<input name="transportStyle" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">贸易术语:</label>
				<input name="tradeTerm" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">贸易国:</label>
				<input name="tradingNation" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">原产国:</label>
				<input name="originNation" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">运单号:</label>
				<input name="wagyBillNum" value="" type="text" class="form-control" placeholder="" />
			</div>
			<br />
			<h3>税款信息</h3>
			<hr />
			<div class="form-group">
				<label for="">交税日期:</label>
				<input name="taxesDate" value="" type="text" class="form-control date" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">关税税额:</label>
				<input name="tariff" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">增值税税额:</label>
				<input name="valueAdded" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">消费税税额:</label>
				<input name="exciseTax" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">合计税额:</label>
				<input name="allTax" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">回海关票日期:</label>
				<input name="comPortDate" value="" type="text" class="form-control date" placeholder="" />
			</div>
			<br />
			<h3>报关信息</h3>
			<hr />
			<div class="form-group">
				<label for="">报关日期:</label>
				<input  name="portDate" value="" type="text" class="form-control date" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">报关单号:</label>
				<input name="inPortNum" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">海关编码:</label>
				<input name="portNum" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">报关单双抬头:</label>
				<input name="inPortDoubleHead" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">回报关单日期:</label>
				<input name="reurnDate" value="" type="text" class="form-control date" placeholder="" />
			</div>
			<br />
			<h3>费用信息</h3>
			<hr />
			<div class="form-group">
				<label for="">清关费:</label>
				<input name="clearMoney" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">仓储费:</label>
				<input name="warehouseMoney" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-textarea">
				<label for="">备注：</label>
				<textarea name="info" class="" rows="4" placeholder=""></textarea>
			</div>
			<br />
			<h3>上传资料</h3>
			<hr />
			<div class="form-group">
				<label for="" id="">关税税票：</label>
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
			<c:if test="${project.clear.tariffFile != null }">
				<a href="${ip }${project.clear.tariffFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
			</c:if>
			</div>
			<div class="form-group">
				<label for="" id="">增值税税票：</label>
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
			<c:if test="${project.clear.valueAddedFile != null }">
				<a href="${ip }${project.clear.valueAddedFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
			</c:if>
			</div>
			<div class="form-group">
				<label for="" id="">消费税税票：</label>
				<input type="text" name="file3" id="have3" value="0" hidden>
				<input name="image" type="file" id="file3" accept="application/pdf" style="display: none;" />
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
				<c:if test="${project.clear.exciseTaxFile != null }">
					<a href="${ip }${project.clear.exciseTaxFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
				</c:if>
			</div>
			<div class="form-group">
				<label for="" id="">报关单：</label>
				<input type="text" name="file4" id="have4" value="0" hidden>
				<input name="image" type="file" id="file4" accept="application/pdf" style="display: none;" />
				<div class="input-group">
					<input type="text" class="form-control" id="text4" placeholder="" readonly>
					<div class="input-group-addon btn btn-default" id="btn4">
						<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> 选择文件
					</div>
				</div>
				<script>
					$(document).ready(function() {
						$("#btn4").click(function() {
							$("#file4").click();
						});
						$("#file4").change(function() {
							var filePath = $(this).val();
							$("#text4").val(filePath);
							if(filePath != null||filePath != ''){
								$("#have4").attr("value","1");
							}
							if(filePath == null||filePath == ''){
								$("#have4").attr("value","0");
							}
						});
					});
				</script>
				<c:if test="${project.clear.inPortFile != null }">
					<a href="${ip }${project.clear.inPortFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
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