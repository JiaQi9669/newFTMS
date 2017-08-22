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
	描述：物流 已完结 二级界面
-->
<html lang="zh-CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>Bootstrap 101 Template</title>
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
		<div class="baseInfo">
			<div>
				<label>提货时间：</label>
				<p>${project.logis.outGoodsTime }</p>
			</div>
			<div>
				<label>提货联系人：</label>
				<p>${project.logis.outGoodsName }</p>
			</div>
			<div>
				<label>提货人联系电话：</label>
				<p>${project.logis.outGoodsPhone }</p>
			</div>
			<div>
				<label>提货人车牌号：</label>
				<p>${project.logis.outGoodsCarId }</p>
			</div>
			<div>
				<label>提货人身份证号：</label>
				<p>${project.logis.outGoodsIDCard }</p>
			</div>
		</div>
		<br />
		<h3>运输信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>运输人联系人：</label>
				<p>${project.logis.logisName }</p>
			</div>
			<div>
				<label>运输人联系电话：</label>
				<p>${project.logis.logisPhone }</p>
			</div>
			<div>
				<label>运输人车牌号：</label>
				<p>${project.logis.logisCarId }</p>
			</div>
			<div>
				<label>运输人身份证号：</label>
				<p>${project.logis.logisIDCard }</p>
			</div>
		</div>
		<br />
		<h3>物流信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>物流负责人单位：</label>
				<p>${project.logis.logisPartName }</p>
			</div>
			<div>
				<label>运输人联系电话：</label>
				<p>${project.logis.logisPhone }</p>
			</div>
			<div>
				<label>运输人车牌号：</label>
				<p>${project.logis.logisCarId }</p>
			</div>
			<div>
				<label>运输人身份证号：</label>
				<p>${project.logis.logisIDCard }</p>
			</div>
		</div>
		<br />
		<h3>收货信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>收货人收获单位：</label>
				<p>${project.logis.inGoodsPartName }</p>
			</div>
			<div>
				<label>收获地址：</label>
				<p>${project.logis.inGoodsAdress }</p>
			</div>
			<div>
				<label>收货人联系人：</label>
				<p>${project.logis.inGoodsName }</p>
			</div>
			<div>
				<label>收货人联系电话：</label>
				<p>${project.logis.inGoodsPhone }</p>
			</div>
		</div>
		<br />
		<h3>仓储信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>入库时间：</label>
				<p>${project.logis.inGoodsTime }</p>
			</div>
			<div>
				<label>联系人：</label>
				<p>${project.logis.warehouseName }</p>
			</div>
			<div>
				<label>联系电话：</label>
				<p>${project.logis.warehousePhone }</p>
			</div>
			<div>
				<label>仓库地址：</label>
				<p>${project.logis.warehouseAdress }</p>
			</div>
			
			<!--<div style="display: block;">-->
			<div>
				<label>出库时间1：</label>
				<p>${project.logis.outWareTime1 }</p>
			<!--</div>-->
			<!--<div>-->
				<label>出库货物数量1：</label>
				<p>${project.logis.outWareNum1 }</p>
			</div>
			<!--<div style="display: block;">-->
			<div>
				<label>出库时间2：</label>
				<p>${project.logis.outWareTime2 }</p>
			<!--</div>-->
			<!--<div>-->
				<label>出库货物数量2：</label>
				<p>${project.logis.outWareNum2 }</p>
			</div>
			<!--<div style="display: block;">-->
			<div>
				<label>出库时间3：</label>
				<p>${project.logis.outWareTime3 }</p>
			<!--</div>-->
			<!--<div>-->
				<label>出库货物数量3：</label>
				<p>${project.logis.outWareNum3 }</p>
			</div>
			<!--<div style="display: block;">-->
			<div>
				<label>出库时间4：</label>
				<p>${project.logis.outWareTime4 }</p>
			<!--</div>-->
			<!--<div>-->
				<label>出库货物数量4：</label>
				<p>${project.logis.outWareNum4 }</p>
			</div>
			<!--<div style="display: block;">-->
			<div>
				<label>出库时间5：</label>
				<p>${project.logis.outWareTime5 }</p>
			<!--</div>-->
			<!--<div>-->
				<label>出库货物数量5：</label>
				<p>${project.logis.outWareNum5 }</p>
			</div>
		</div>
		<br />
		<h3>费用信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>国内仓储费用：</label>
				<p>${project.logis.inWarehouseMoney }</p>
			</div>
		</div>
		<div class="form-textarea">
			<label for="">备注：</label>
			<textarea class="" rows="4" placeholder="" readonly>
				${project.logis.info }
			</textarea>
		</div>
		<br />
		<h3>上传资料 </h3>
		<hr />
		<label>国内运输文件：</label>
		<c:if test="${project.logis.inLogisFile !=null}">
			<a href="${ip }${project.logis.inLogisFile }" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br>
		
		<label>入库单：</label>
		<c:if test="${project.logis.inGoodsFile !=null}">
			<a href="${ip }${project.logis.inGoodsFile }" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br>
		<label>出库单：</label>
		<c:if test="${project.logis.outGoodsFile !=null}">
			<a href="${ip }${project.logis.outGoodsFile }" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		
		<br /><br /><br /><br />
	</body>
</html>