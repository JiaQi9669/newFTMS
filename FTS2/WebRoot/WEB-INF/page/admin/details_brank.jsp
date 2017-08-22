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
	描述：银行 已完结 二级界面
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
		<h3>电汇</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>电汇时间1：</label>
				<p>${project.brank.TTTime1 }</p>
			</div>
			<div>
				<label>电汇银行1：</label>
				<p>${project.brank.TTBrank1 }</p>
			</div>
			<div>
				<label>外币币种金额1：</label>
				<p>${project.brank.outMoney1 }</p>
			</div>
			<div>
				<label>汇率1：</label>
				<p>${project.brank.TTRloe1 }</p>
			</div>
			<div>
				<label>折合人民币金额1：</label>
				<p>${project.brank.RMBMoney1 }</p>
			</div>
		</div>
		<div class="baseInfo">
			<div>
				<label>电汇时间2：</label>
				<p>${project.brank.TTTime2 }</p>
			</div>
			<div>
				<label>电汇银行2：</label>
				<p>${project.brank.TTBrank2 }</p>
			</div>
			<div>
				<label>外币币种金额2：</label>
				<p>${project.brank.outMoney2 }</p>
			</div>
			<div>
				<label>汇率2：</label>
				<p>${project.brank.TTRloe2 }</p>
			</div>
			<div>
				<label>折合人民币金额2：</label>
				<p>${project.brank.RMBMoney2 }</p>
			</div>
		</div>
		<div class="baseInfo">
			<div>
				<label>电汇时间3：</label>
				<p>${project.brank.TTTime3 }</p>
			</div>
			<div>
				<label>电汇银行3：</label>
				<p>${project.brank.TTBrank3 }</p>
			</div>
			<div>
				<label>外币币种金额3：</label>
				<p>${project.brank.outMoney3 }</p>
			</div>
			<div>
				<label>汇率3：</label>
				<p>${project.brank.TTRloe3 }</p>
			</div>
			<div>
				<label>折合人民币金额3：</label>
				<p>${project.brank.RMBMoney3 }</p>
			</div>
		</div>
		<div class="baseInfo">
			<div>
				<label>电汇时间4：</label>
				<p>${project.brank.TTTime4 }</p>
			</div>
			<div>
				<label>电汇银行4：</label>
				<p>${project.brank.TTBrank4 }</p>
			</div>
			<div>
				<label>外币币种金额4：</label>
				<p>${project.brank.outMoney4 }</p>
			</div>
			<div>
				<label>汇率4：</label>
				<p>${project.brank.TTRloe4 }</p>
			</div>
			<div>
				<label>折合人民币金额4：</label>
				<p>${project.brank.RMBMoney4 }</p>
			</div>
		</div>
		<div class="baseInfo">
			<div>
				<label>电汇时间5：</label>
				<p>${project.brank.TTTime5 }</p>
			</div>
			<div>
				<label>电汇银行5：</label>
				<p>${project.brank.TTBrank5 }</p>
			</div>
			<div>
				<label>外币币种金额5：</label>
				<p>${project.brank.outMoney5 }</p>
			</div>
			<div>
				<label>汇率5：</label>
				<p>${project.brank.TTRloe5 }</p>
			</div>
			<div>
				<label>折合人民币金额5：</label>
				<p>${project.brank.RMBMoney5 }</p>
			</div>
		</div>
		<br />
		<h3>信用证</h3>
		<hr />
		<div class="baseInfo">
			<div>
				<label>开证时间：</label>
				<p>${project.brank.LCTime }</p>
			</div>
			<div>
				<label>开证银行：</label>
				<p>${project.brank.LCBrank }</p>
			</div>
			<div>
				<label>信用证号：</label>
				<p>${project.brank.LCNum }</p>
			</div>
			<div>
				<label>信用证币种金额：</label>
				<p>${project.brank.LCMoneyStyle }</p>
			</div>
			<div>
				<label>改证时间：</label>
				<p>${project.brank.CChangeTime }</p>
			</div>
			<div>
				<label>付汇时间 ：</label>
				<p>${project.brank.outTime }</p>
			</div>
			<div>
				<label>付汇汇率：</label>
				<p>${project.brank.outRole }</p>
			</div>
			<div>
				<label>付汇外币金额：</label>
				<p>${project.brank.outMoney }</p>
			</div>
			<div>
				<label>折合人民币金额：</label>
				<p>${project.brank.outRMBMoney }</p>
			</div>
		</div>
		<div class="form-textarea">
			<label for="">备注：</label>
			<textarea class="" rows="4" placeholder="" readonly>
				${projcet.brank.info }
			</textarea>
		</div>
		<br />
		<h3>上传资料 </h3>
		<hr />
		<label>电汇电文：</label>
		<c:if test="${project.brank.TTFiles != null }">
			<a href="${ip }${project.brank.TTFiles}" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br>
		<label>信用证电文：</label>
		<c:if test="${project.brank.LCFiles != null }">
			<a href="${ip }${project.brank.LCFiles}" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br>
		<label>改证电文：</label>
		<c:if test="${project.brank.RCFiles != null }">
			<a href="${ip }${project.brank.RCFiles}" target="_Blank" class="btn btn-default" type="button">查阅</a>
		</c:if>
		<br>
		<br /><br /><br /><br />
	</body>
</html>