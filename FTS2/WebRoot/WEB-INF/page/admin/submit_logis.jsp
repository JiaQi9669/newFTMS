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
	描述：物流 在执行 二级界面
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
		<script src="js/myscript.js"></script>
		
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
				<label>运单号：</label>
				<p>${project.clear.wagyBillNum }</p>
			</div>
			<div>
				<label>品名：</label>
				<p>${project.productName}</p>
			</div>
			<div>
				<label>数量：</label>
				<p>${project.projectNum }</p>
			</div>
			<div>
				<label>最终用户：</label>
				<p>${project.finalUser }</p>
			</div>
		</div>
		<br />
		<h3>提货信息</h3>
		<hr />
		<form class="form-inline" enctype="multipart/form-data"  action="Logis_projectLogis" method="post">
			<input value="${project.brank.id }" name="id" hidden>
			<div class="form-group">
				<label for="">提货时间:</label>
				<input name="outGoodsTime" value="" type="text" class="form-control date" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">提货联系人:</label>
				<input name="outGoodsName" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">联系电话:</label>
				<input name="outGoodsPhone" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">身份证号:</label>
				<input name="outGoodsIDCard" value="" type="text" class="form-control" placeholder="" />
			</div>
			<br />
			<h3>运输信息</h3>
			<hr />
			<div class="form-group">
				<label for="">运输人联系人:</label>
				<input name="logisName" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">联系电话:</label>
				<input name="logisPhone" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">车牌号:</label>
				<input name="logisCarId" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">身份证号:</label>
				<input name="logisIDCard" value="" type="text" class="form-control" placeholder="" />
			</div>
			<br />
			<h3>物流信息</h3>
			<hr />
			<div class="form-group">
				<label for="">负责人单位:</label>
				<input name="logisPartName" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">负责人地址:</label>
				<input name="logisPartAdress" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">负责人联系人:</label>
				<input name="logisPartPersonName" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">联系电话:</label>
				<input name="logisPartPhone" value="" type="text" class="form-control" placeholder="" />
			</div>
			<br />
			<h3>仓储信息</h3>
			<hr />
			<div class="form-group">
				<label for="">入库时间:</label>
				<input name="inGoodsTime" value="" type="text" class="form-control date" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">联系人:</label>
				<input name="warehouseName" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">联系电话:</label>
				<input name="warehousePhone" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-group">
				<label for="">仓库地址:</label>
				<input name="warehouseAdress" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div id="add1">
				<div class="form-group">
					<label for="">出库时间1:</label>
					<input name="outWareTime1" value="" type="text" class="form-control date" placeholder="" />
				</div>
				<div class="form-group">
					<label for="">出库货物数量:</label>
					<input name="outWareNum1" value="" type="text" class="form-control" placeholder="" />
				</div>
				<a class="btn btn-success btn-xs" id="btn1" onclick="add1()"><span class="glyphicon glyphicon-plus"></span> 添加</a>
				<!--<a class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 删除</a>-->
			</div>
			<div id="add2">
				<div class="form-group">
					<label for="">出库时间2:</label>
					<input name="outWareTime2" value="" type="text" class="form-control date" placeholder="" />
				</div>
				<div class="form-group">
					<label for="">出库货物数量:</label>
					<input name="outWareNum2" type="text" class="form-control" id="" placeholder="" />
				</div>
				<a class="btn btn-success btn-xs" id="btn2" onclick="add2()"><span class="glyphicon glyphicon-plus"></span> 添加</a>
				<a class="btn btn-danger btn-xs" id="btn2" onclick="remove2()"><span class="glyphicon glyphicon-remove"></span> 删除</a>
			</div>
			<div id="add3">
				<div class="form-group">
					<label for="">出库时间3:</label>
					<input name="outWareTime3" value="" type="text" class="form-control date" placeholder="" />
				</div>
				<div class="form-group">
					<label for="">出库货物数量:</label>
					<input name="outWareNum3" value="" type="text" class="form-control" placeholder="" />
				</div>
				<a class="btn btn-success btn-xs" id="btn3" onclick="add3()"><span class="glyphicon glyphicon-plus"></span> 添加</a>
				<a class="btn btn-danger btn-xs" id="btn3" onclick="remove3()"><span class="glyphicon glyphicon-remove"></span> 删除</a>
			</div>
			<div id="add4">
				<div class="form-group">
					<label for="">出库时间4:</label>
					<input name="outWareTime4" value="" type="text" class="form-control date" placeholder="" />
				</div>
				<div class="form-group">
					<label for="">出库货物数量:</label>
					<input name="outWareNum4" value="" type="text" class="form-control" placeholder="" />
				</div>
				<a class="btn btn-success btn-xs" id="btn4" onclick="add4()"><span class="glyphicon glyphicon-plus"></span> 添加</a>
				<a class="btn btn-danger btn-xs" id="btn4" onclick="remove4()"><span class="glyphicon glyphicon-remove"></span> 删除</a>
			</div>
			<div id="add5">
				<div class="form-group">
					<label for="">出库时间5:</label>
					<input name="outWareTime5" value="" type="text" class="form-control date" placeholder="" />
				</div>
				<div class="form-group">
					<label for="">出库货物数量:</label>
					<input name="outWareNum5" value="" type="text" class="form-control" placeholder="" value="6" />
				</div>
				<a class="btn btn-danger btn-xs" id="btn5" onclick="remove5()"><span class="glyphicon glyphicon-remove"></span> 删除</a>
			</div>
			<br />
			<h3>费用信息</h3>
			<hr />
			<div class="form-group">
				<label for="">国内仓储费用:</label>
				<input name="inWarehouseMoney" value="" type="text" class="form-control" placeholder="" />
			</div>
			<div class="form-textarea">
				<label for="">备注：</label>
				<textarea name="info" class="" rows="4" placeholder=""></textarea>
			</div>
			<br />
			<h3>上传资料</h3>
			<hr />
			<div class="form-group">
				<label for="" id="">国内运输文件：</label>
				<input type="text" name="file1" id="have1" value="0" hidden>
				<input name="image" type="file" id="file1" accept="application/pdf" style="display: none;" />
				<div class="input-group">
					<input type="text" class="form-control" id="text1" placeholder="" readonly>
					<div class="input-group-addon btn btn-default" id="btnxm1">
						<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> 选择文件
					</div>
				</div>
				<script>
					$(document).ready(function() {
						$("#btnxm1").click(function() {
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
			<c:if test="${project.logis.inLogisFile !=null}">
				<a href="${ip }${project.logis.inLogisFile }" target="_Blank" class="btn btn-default" type="button">查阅</a>
			</c:if>
			</div>
			<div class="form-group">
				<label for="" id="">入库单：</label>
				<input type="text" name="file2" id="have2" value="0" hidden>
				<input name="image" type="file" id="file2" accept="application/pdf" style="display: none;" />
				<div class="input-group">
					<input type="text" class="form-control" id="text2" placeholder="" readonly>
					<div class="input-group-addon btn btn-default" id="btnxm2">
						<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> 选择文件
					</div>
				</div>
				<script>
					$(document).ready(function() {
						$("#btnxm2").click(function() {
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
			<c:if test="${project.logis.inGoodsFile !=null}">
				<a href="${ip }${project.logis.inGoodsFile }" target="_Blank" class="btn btn-default" type="button">查阅</a>
			</c:if>
			</div>
			<div class="form-group">
				<label for="" id="">出库单：</label>
				<input type="text" name="file3" id="have3" value="0" hidden>
				<input name="image" type="file" id="file3" accept="application/pdf" style="display: none;" />
				<div class="input-group">
					<input type="text" class="form-control" id="text3" placeholder="" readonly>
					<div class="input-group-addon btn btn-default" id="btnxm3">
						<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> 选择文件
					</div>
				</div>
				<script>
					$(document).ready(function() {
						$("#btnxm3").click(function() {
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
			<c:if test="${project.logis.outGoodsFile !=null}">
				<a href="${ip }${project.logis.outGoodsFile }" target="_Blank" class="btn btn-default" type="button">查阅</a>
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
