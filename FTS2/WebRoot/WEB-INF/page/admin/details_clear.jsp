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
	描述：清关 已完结 二级界面
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
				<label>供应商：</label>
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
		<div class="baseInfo">
			<div>
				<label>清关口岸：</label>
				<p>${project.clear.clearPort }</p>
			</div>
			<div>
				<label>预计到货日期：</label>
				<p>${project.clear.inGoodDate }</p>
			</div>
			<div>
				<label>运输方式：</label>
				<p>${project.clear.transportStyle }</p>
			</div>
			<div>
				<label>贸易术语：</label>
				<p>${project.clear.tradeTerm }</p>
			</div>
			<div>
				<label>贸易国：</label>
				<p>${project.clear.tradingNation }</p>
			</div>
			<div>
				<label>原产国：</label>
				<p>${project.clear.originNation }</p>
			</div>
			<div>
				<label>运单号：</label>
				<p>${project.clear.wagyBillNum }</p>
			</div>
		</div>
		<br />
		<h3>税款信息 </h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>交税日期：</label>
				<p>${project.clear.taxesDate }</p>
			</div>
			<div>
				<label>关税税额：</label>
				<p>${project.clear.tariff }</p>
			</div>
			<div>
				<label>增值税税额：</label>
				<p>${project.clear.valueAdded }</p>
			</div>
			<div>
				<label>消费税税额：</label>
				<p>${project.clear.exciseTax }</p>
			</div>
			<div>
				<label>合计税额：</label>
				<p>${project.clear.allTax }</p>
			</div>
			<div>
				<label>回海关票日期：</label>
				<p>${project.clear.comPortDate }</p>
			</div>
		</div>
		<br />
		<h3>报关信息 </h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>报关日期：</label>
				<p>${project.clear.portDate }</p>
			</div>
			<div>
				<label>报关单号：</label>
				<p>${project.clear.inPortNum }</p>
			</div>
			<div>
				<label>海关编码：</label>
				<p>${project.clear.portNum }</p>
			</div>
			<div>
				<label>报关单双抬头：</label>
				<p>${project.clear.inPortDoubleHead }</p>
			</div>
			<div>
				<label>回报关单日期：</label>
				<p>${project.clear.reurnDate }</p>
			</div>
		</div>
		<br />
		<h3>费用信息</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>清关费：</label>
				<p>${project.clear.clearMoney }</p>
			</div>
			<div>
				<label>仓储费：</label>
				<p>${project.clear.warehouseMoney }</p>
			</div>
		</div>
		<br />
		<h3>上传资料 </h3>
		<hr />
		<label>关税税票：</label>
		<c:if test="${project.clear.tariffFile != null }">
				<a href="${ip }${project.clear.tariffFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br>
		<label>增值税税票：</label>
		<c:if test="${project.clear.valueAddedFile != null }">
				<a href="${ip }${project.clear.valueAddedFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br>
		<label>消费税税票：</label>
		<c:if test="${project.clear.exciseTaxFile != null }">
			<a href="${ip }${project.clear.exciseTaxFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br>
		<label>报关单：</label>
		<c:if test="${project.clear.inPortFile != null }">
					<a href="${ip }${project.clear.inPortFile}" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br>
		<div class="form-textarea">
			<label for="">备注：</label>
			<textarea class="" rows="4" placeholder="" readonly>
				${project.clear.info }
			</textarea>
		</div>
	</body>
</html>