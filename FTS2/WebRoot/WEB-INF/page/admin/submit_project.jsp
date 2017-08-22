<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title></title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

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

<style>
.form-group-inline {
	display: inline-block;
	margin-right: 30px;
}

.form-textarea textarea {
	display: block;
	width: 100%;
	margin-bottom: 15px;
}

.form-group-file {
	margin-right: 30px;
}

.form-group-file p {
	display: inline-block;
	margin-bottom: 5px;
}

input[type=file] {
	display: none;
}
</style>

</head>

<body class="container-fluid">
	<!--<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample1" aria-expanded="false" aria-controls="collapseExample">
  					折叠
				</button>-->
	<form class="" method="post" enctype="multipart/form-data"
		action="Project_submitProject">
		<div class="panel-group" id="accordion">
			<!--基本情况-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse1"> <!--<span class="glyphicon glyphicon-sort"></span>-->
							基本情况 </a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="form-group form-group-inline">
							<input name="id" value="${project.id }" type="text" hidden>
							<label for="">内部编号:</label> <input name="inNum"
								value="${project.inNum }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">外贸合同号:</label> <input name="outNum"
								value="${project.outNum }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">供应商:</label> <input name="supplier"
								value="${project.supplier }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">代理商:</label> <input name="agent"
								value="${project.agent }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">最终用户:</label> <input name="finalUser"
								value="${project.finalUser }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">品名:</label> <input name="productName"
								value="${project.productName }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">型号:</label> <input name="models"
								value="${project.models }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">数量:</label> <input name="projectNum"
								value="${project.projectNum }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">付款方式:</label> <input name="payStyle"
								value="${project.payStyle }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">外贸金额&币种:</label> <input name="outMoney"
								value="${project.outMoney }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">汇比:</label> <input name="exRatio"
								value="${project.exRatio }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">基准汇率:</label> <input name="rate"
								value="${project.rate }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">代理商价:</label> <input name="agentMoney"
								value="${project.agentMoney }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">销售金额:</label> <input name="sellMoney"
								value="${project.sellMoney }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-textarea">
							<label for="">备注:</label>
							<textarea name="info" class="" rows="4" placeholder="">
								${project.info }
							</textarea>
						</div>

						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">内贸合同：</label> <input name="image" type="file"
								id="file1" accept="application/pdf" /> <input type="text"
								name="file1" id="have1" value="0" hidden />
							<p>
								<c:if test="${empty  project.inFiles}">
								未上传
							</c:if>
								<c:if test="${not empty project.inFiles}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button1" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button1")
															.click(
																	function() {
																		$(
																				"#file1")
																				.click();
																	});
													$("#file1")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have1");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>

						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">外贸合同：</label> 
							<input name="image" type="file"
								id="file2" accept="application/pdf" /> 
							<input type="text"
								name="file2" id="have2" value="0" hidden />
							<p>
								<c:if test="${empty  project.outFiles}">
								未上传
							</c:if>
								<c:if test="${not empty project.outFiles}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button2" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button2")
															.click(
																	function() {
																		$(
																				"#file2")
																				.click();
																	});
													$("#file2")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have2");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
					</div>
				</div>
			</div>
			<!--收款情况-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse2"> 收款情况 </a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse in">
					<div class="panel-body">
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期1:</label> <input name="haveDate1"
									value="${project.haveDate1 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额1:</label> <input name="haveMoney1"
									value="${project.haveMoney1 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期2:</label> <input name="haveDate2"
									value="${project.haveDate2 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额2:</label> <input name="haveMoney2"
									value="${project.haveMoney2 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期3:</label> <input name="haveDate3"
									value="${project.haveDate3 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额3:</label> <input name="haveMoney3"
									value="${project.haveMoney3 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期4:</label> <input name="haveDate4"
									value="${project.haveDate4 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额4:</label> <input name="haveMoney4"
									value="${project.haveMoney4 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期5:</label> <input name="haveDate5"
									value="${project.haveDate5 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额5:</label> <input name="haveMoney5"
									value="${project.haveMoney5 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期6:</label> <input name="haveDate6"
									value="${project.haveDate6 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额6:</label> <input name="haveMoney6"
									value="${project.haveMoney6 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期7:</label> <input name="haveDate7"
									value="${project.haveDate7 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额7:</label> <input name="haveMoney7"
									value="${project.haveMoney7 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期8:</label> <input name="haveDate8"
									value="${project.haveDate8 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额8:</label> <input name="haveMoney8"
									value="${project.haveMoney8 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期9:</label> <input name="haveDate9"
									value="${project.haveDate9 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额9:</label> <input name="haveMoney9"
									value="${project.haveMoney9 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款日期10:</label> <input name="haveDate10"
									value="${project.haveDate10 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">收款金额10:</label> <input name="haveMoney10"
									value="${project.haveMoney10 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div class="form-group form-group-inline">
							<label for="">收款合计:</label> <input name="allCanHaveMoney"
								value="${project.allCanHaveMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">尾款金额:</label> <input name="noPayMoney"
								value="${project.noPayMoney }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期1:</label> <input name="inDate1"
									value="${project.inDate1 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额1:</label> <input name="inMoney1"
									value="${project.inMoney1 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期2:</label> <input name="inDate2"
									value="${project.inDate2 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额2:</label> <input name="inMoney2"
									value="${project.inMoney2 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期3:</label> <input name="inDate3"
									value="${project.inDate3 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额3:</label> <input name="inMoney3"
									value="${project.inMoney3 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期4:</label> <input name="inDate4"
									value="${project.inDate4 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额4:</label> <input name="inMoney4"
									value="${project.inMoney4 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期5:</label> <input name="inDate5"
									value="${project.inDate5 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额5:</label> <input name="inMoney5"
									value="${project.inMoney5 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期6:</label> <input name="inDate6"
									value="${project.inDate6 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额6:</label> <input name="inMoney6"
									value="${project.inMoney6 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期7:</label> <input name="inDate7"
									value="${project.inDate7 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额7:</label> <input name="inMoney7"
									value="${project.inMoney7 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期8:</label> <input name="inDate8"
									value="${project.inDate8 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额8:</label> <input name="inMoney8"
									value="${project.inMoney8 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期9:</label> <input name="inDate9"
									value="${project.inDate9 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额9:</label> <input name="inMoney9"
									value="${project.inMoney9 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票日期10:</label> <input name="inDate10"
									value="${project.inDate10 }" type="text" class="form-control date"
									placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">开票金额10:</label> <input name="inMoney10"
									value="${project.inMoney10 }" type="text" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="form-textarea">
							<label for="">备注:</label>
							<textarea name="monkeyInfo" class="" rows="4" placeholder="">
								${project.monkeyInfo }
							</textarea>
						</div>
					</div>
				</div>
			</div>
			<!--电汇/信用证-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse3"> 电汇/信用证 </a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse in">
					<div class="panel-body">
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇时间1:</label> <input name="brank.TTTime1"
									value="${project.brank.TTTime1 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇外币币种金额1:</label> <input name="brank.outMoney1"
									value="${project.brank.outMoney1 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">汇率1:</label> <input name="brank.TTRloe1"
									value="${project.brank.TTRloe1 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">折合人民币金额1:</label> <input name="brank.RMBMoney1"
									value="${project.brank.RMBMoney1 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇时间2:</label> <input name="brank.TTTime2"
									value="${project.brank.TTTime2 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇外币币种金额2:</label> <input name="brank.outMoney2"
									value="${project.brank.outMoney2 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">汇率2:</label> <input name="brank.TTRloe2"
									value="${project.brank.TTRloe2}" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">折合人民币金额2:</label> <input name="brank.RMBMoney2"
									value="${project.brank.RMBMoney2 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇时间3:</label> <input name="brank.TTTime3"
									value="${project.brank.TTTime3 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇外币币种金额3:</label> <input name="brank.outMoney3"
									value="${project.brank.outMoney3 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">汇率3:</label> <input name="brank.TTRloe3"
									value="${project.brank.TTRloe3 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">折合人民币金额3:</label> <input name="brank.RMBMoney3"
									value="${project.brank.RMBMoney3 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇时间4:</label> <input name="brank.TTTime4"
									value="${project.brank.TTTime4 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇外币币种金额4:</label> <input name="brank.outMoney4"
									value="${project.brank.outMoney4 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">汇率4:</label> <input name="brank.TTRloe4"
									value="${project.brank.TTRloe4 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">折合人民币金额4:</label> <input name="brank.RMBMoney4"
									value="${project.brank.RMBMoney4 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇时间5:</label> <input name="brank.TTTime5"
									value="${project.brank.TTTime5 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">电汇外币币种金额5:</label> <input name="brank.outMoney5"
									value="${project.brank.outMoney5 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">汇率5:</label> <input name="brank.TTRloe5"
									value="${project.brank.TTRloe5 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">折合人民币金额5:</label> <input name="brank.RMBMoney5"
									value="${project.brank.RMBMoney5 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div class="form-group form-group-inline">
							<label for="">折合人民币总额:</label> <input name="brank.AllRMBMoney"
								value="${project.brank.allRMBMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">开证时间:</label> <input name="brank.LCTime"
								value="${project.brank.LCTime }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">开证银行:</label> <input name="brank.LCBrank"
								value="${project.brank.LCBrank }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">信用证号:</label> <input name="brank.LCNum"
								value="${project.brank.LCNum }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">信用证币种金额:</label> <input name="brank.LCMoneyStyle"
								value="${project.brank.LCMoneyStyle }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">改证时间:</label> <input name="brank.CChangeTime"
								value="${project.brank.CChangeTime }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">付汇时间:</label> <input name="brank.outTime"
								value="${project.brank.outTime }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">付汇汇率:</label> <input name="brank.outRole"
								value="${project.brank.outRole }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">付汇外币金额:</label> <input name="brank.outMoney"
								value="${project.brank.outMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">折合人民币金额:</label> <input name="brank.outRMBMoney"
								value="${project.brank.outRMBMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-textarea">
							<label for="">押汇情况备注:</label>
							<textarea name="brank.LCinfo" class="" rows="4" placeholder="">
								${project.brank.LCinfo }
							</textarea>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">电汇电文：</label> <input name="image" type="file"
								id="file3" accept="application/pdf" /> <input type="text"
								name="file3" id="have3" value="0" hidden />
							<p>
								<c:if test="${empty  project.brank.TTFiles}">
								未上传
							</c:if>
								<c:if test="${not empty project.brank.TTFiles}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button3" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button3")
															.click(
																	function() {
																		$(
																				"#file3")
																				.click();
																	});
													$("#file3")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have3");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">信用证电文：</label> <input name="image"
								type="file" id="file4" accept="application/pdf" /> <input
								type="text" name="file4" id="have4" value="0" hidden />
							<p>
								<c:if test="${empty  project.brank.LCFiles}">
								未上传
							</c:if>
								<c:if test="${not empty project.brank.LCFiles}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button4" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button4")
															.click(
																	function() {
																		$(
																				"#file4")
																				.click();
																	});
													$("#file4")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have4");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">改证电文：</label> <input name="image" type="file"
								id="file5" accept="application/pdf" /> <input type="text"
								name="file5" id="have5" value="0" hidden />
							<p>
								<c:if test="${empty  project.brank.RCFiles}">
								未上传
							</c:if>
								<c:if test="${not empty project.brank.RCFiles}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button5" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button5")
															.click(
																	function() {
																		$(
																				"#file5")
																				.click();
																	});
													$("#file5")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have5");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
					</div>
				</div>
			</div>
			<!--招投标-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse4"> 招投标 </a>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse collapse in">
					<div class="panel-body">

						<div class="form-group form-group-inline">
							<label for="">招标单位:</label> <input name="bid.bidCompany"
								value="${project.bid.bidCompany }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">招标标号:</label> <input name="bid.bidNum"
								value="${project.bid.bidNum }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">业主:</label> <input name="bid.owner"
								value="${project.bid.owner }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">开标日期:</label> <input name="bid.openBidDate"
								value="${project.bid.openBidDate }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-textarea">
							<label for="">备注:</label>
							<textarea name="bid.info" class="" rows="4" placeholder="">
								${bid.info }
							</textarea>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">招投标评标结果：</label> <input name="image"
								type="file" id="file6" accept="application/pdf" /> <input
								type="text" name="file6" id="have6" value="0" hidden />
							<p>
								<c:if test="${empty  project.bid.bidResultFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.bid.bidResultFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button6" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button6")
															.click(
																	function() {
																		$(
																				"#file6")
																				.click();
																	});
													$("#file6")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have6");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">中标通知书：</label> <input name="image"
								type="file" id="file7" accept="application/pdf" /> <input
								type="text" name="file7" id="have7" value="0" hidden />
							<p>
								<c:if test="${empty  project.bid.bidTellFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.bid.bidTellFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button7" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button7")
															.click(
																	function() {
																		$(
																				"#file7")
																				.click();
																	});
													$("#file7")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have7");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
					</div>
				</div>
			</div>
			<!--许可证-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse5"> 许可证 </a>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse in">
					<div class="panel-body">
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">机电产品进口许可证编号:</label> <input
									name="busines.inCanNum" value="${project.busines.inCanNum }"
									type="text" class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">自动进口许可证编号:</label> <input name="busines.inAutoNum"
									value="${project.busines.inAutoNum }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div class="form-textarea">
							<label for="">备注:</label>
							<textarea name="busines.info" class="" rows="4" placeholder="">
								${busines.info }
							</textarea>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">机电产品进口许可证：</label> <input name="image"
								type="file" id="file8" accept="application/pdf" /> <input
								type="text" name="file8" id="have8" value="0" hidden />
							<p>
								<c:if test="${empty  project.busines.inCanFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.busines.inCanFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button8" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button8")
															.click(
																	function() {
																		$(
																				"#file8")
																				.click();
																	});
													$("#file8")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have8");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">自动进口许可证：</label> <input name="image"
								type="file" id="file9" accept="application/pdf" /> <input
								type="text" name="file9" id="have9" value="0" hidden />
							<p>
								<c:if test="${empty  project.busines.inCanFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.busines.inCanFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button9" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button9")
															.click(
																	function() {
																		$(
																				"#file9")
																				.click();
																	});
													$("#file9")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have9");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
					</div>
				</div>
			</div>
			<!--国际运输/清关-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse6"> 国际运输/清关 </a>
					</h4>
				</div>
				<div id="collapse6" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="form-group form-group-inline">
							<label for="">预计到货日期:</label> <input name="clear.inGoodDate"
								value="${project.clear.inGoodDate }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">运输方式:</label> <input name="clear.transportStyle"
								value="${project.clear.transportStyle }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">贸易术语:</label> <input name="clear.tradeTerm"
								value="${project.clear.tradeTerm }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">清关口岸:</label> <input name="clear.clearPort"
								value="${project.clear.clearPort }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">贸易国:</label> <input name="clear.tradingNation"
								value="${project.clear.tradingNation }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">原产国:</label> <input name="clear.originNation"
								value="${project.clear.originNation }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">运单号:</label> <input name="clear.wagyBillNum"
								value="${project.clear.wagyBillNum }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">报关日期:</label> <input name="clear.portDate"
								value="${project.clear.portDate }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">报关单号:</label> <input name="clear.inPortNum"
								value="${project.clear.inPortNum }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">海关编码:</label> <input name="clear.portNum"
								value="${project.clear.portNum }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">报关双抬头:</label> <input name="clear.inPortDoubleHead"
								value="${project.clear.inPortDoubleHead }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">缴税日期:</label> <input name="clear.taxesDate"
								value="${project.clear.taxesDate }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">关税金额:</label> <input name="clear.tariff"
								value="${project.clear.tariff }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">增值税金额:</label> <input name="clear.valueAdded"
								value="${project.clear.valueAdded }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">消费税金额:</label> <input name="clear.exciseTax"
								value="${project.clear.exciseTax }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">合计税额:</label> <input name="clear.allTax"
								value="${project.clear.allTax }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">回报关单日期:</label> <input name="clear.reurnDate"
								value="${project.clear.reurnDate }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">回海关票日期:</label> <input name="clear.comPortDate"
								value="${project.clear.comPortDate }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-textarea">
							<label for="">备注:</label>
							<textarea name="clear.info" class="" rows="4" placeholder="">
								${clear.info }
							</textarea>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">报关单：</label> <input name="image" type="file"
								id="file10" accept="application/pdf" /> <input type="text"
								name="file10" id="have10" value="0" hidden />
							<p>
								<c:if test="${empty  project.clear.inPortFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.clear.inPortFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button10" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button10")
															.click(
																	function() {
																		$(
																				"#file10")
																				.click();
																	});
													$("#file10")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have10");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">关税税票：</label> <input name="image" type="file"
								id="file11" accept="application/pdf" /> <input type="text"
								name="file11" id="have11" value="0" hidden />
							<p>
								<c:if test="${empty  project.clear.tariffFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.clear.tariffFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button11" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button11")
															.click(
																	function() {
																		$(
																				"#file11")
																				.click();
																	});
													$("#file11")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have11");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">增值税税票：</label> <input name="image"
								type="file" id="file12" accept="application/pdf" /> <input
								type="text" name="file12" id="have12" value="0" hidden />
							<p>
								<c:if test="${empty  project.clear.valueAddedFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.clear.valueAddedFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button12" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button12")
															.click(
																	function() {
																		$(
																				"#file12")
																				.click();
																	});
													$("#file12")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have12");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">消费税税票：</label> <input name="image"
								type="file" id="file13" accept="application/pdf" /> <input
								type="text" name="file13" id="have13" value="0" hidden />
							<p>
								<c:if test="${empty  project.clear.exciseTaxFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.clear.exciseTaxFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button13" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button13")
															.click(
																	function() {
																		$(
																				"#file13")
																				.click();
																	});
													$("#file13")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have13");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>

					</div>
				</div>
			</div>
			<!--商检-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse7"> 商检 </a>
					</h4>
				</div>
				<div id="collapse7" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="form-group form-group-inline">
							<label for="">检验日期:</label> <input name="insp.inspDate"
								value="${project.insp.inspDate }" type="text"
								class="form-control date" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">商检检验机构:</label> <input name="insp.inspMech"
								value="${project.insp.inspMech }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">报检号:</label> <input name="insp.inspectionNum"
								value="${project.insp.inspectionNum }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">检验形式:</label> <input name="insp.inspStyle"
								value="${project.insp.inspStyle }" type="text"
								class="form-control" placeholder="" />
						</div>

						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">场地工程师:</label> <input name="insp.placeName"
									value="${project.insp.placeName }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">联系电话:</label> <input name="insp.placePhone"
									value="${project.insp.placePhone }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">装机工程师:</label> <input name="insp.installName"
									value="${project.insp.installName }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">联系电话:</label> <input name="insp.installPhone"
									value="${project.insp.installPhone }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div class="form-textarea">
							<label for="">备注:</label>
							<textarea name="insp.info" class="" rows="4" placeholder="">
								${project.insp.info }
							</textarea>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">报检单：</label> <input name="image" type="file"
								id="file14" accept="application/pdf" /> <input type="text"
								name="file14" id="have14" value="0" hidden />
							<p>
								<c:if test="${empty  project.insp.inspFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.insp.inspFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button14" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button14")
															.click(
																	function() {
																		$(
																				"#file14")
																				.click();
																	});
													$("#file14")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have14");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">验收报告：</label> <input name="image" type="file"
								id="file15" accept="application/pdf" /> <input type="text"
								name="file15" id="have15" value="0" hidden />
							<p>
								<c:if test="${empty  project.insp.overInsp}">
								未上传
							</c:if>
								<c:if test="${not empty project.insp.overInsp}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button15" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button15")
															.click(
																	function() {
																		$(
																				"#file15")
																				.click();
																	});
													$("#file15")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have15");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">商检证：</label> <input name="image" type="file"
								id="file16" accept="application/pdf" /> <input type="text"
								name="file16" id="have16" value="0" hidden />
								<p>
								<c:if test="${empty  project.insp.inspCertFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.insp.inspCertFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button16" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button16")
															.click(
																	function() {
																		$(
																				"#file16")
																				.click();
																	});
													$("#file16")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have16");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
					</div>
				</div>
			</div>
			<!--国内运输&出入库-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse8"> 国内运输&出入库 </a>
					</h4>
				</div>
				<div id="collapse8" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="form-group form-group-inline">
							<label for="">提货时间:</label> <input name="logis.outGoodsTime"
								value="${project.logis.outGoodsTime }" type="text"
								class="form-control date" placeholder="" />
						</div>

						<div>
							<div class="form-group form-group-inline">
								<label for="">提货人:</label> <input name="logis.outGoodsName"
									value="${project.logis.outGoodsName }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">联系电话:</label> <input name="logis.outGoodsPhone"
									value="${project.logis.outGoodsPhone }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">车牌号:</label> <input name="logis.outGoodsCarId"
									value="${project.logis.outGoodsCarId }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">身份证号:</label> <input name="logis.outGoodsIDCard"
									value="${project.logis.outGoodsIDCard}" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>

						<div>
							<div class="form-group form-group-inline">
								<label for="">运输人:</label> <input name="logis.logisName"
									value="${project.logis.logisName }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">联系电话:</label> <input name="logis.logisPhone"
									value="${project.logis.logisPhone }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">车牌号:</label> <input name="logis.logisCarId"
									value="${project.logis.logisCarId }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">身份证号:</label> <input name="logis.logisIDCard"
									value="${project.logis.logisIDCard }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>

						<div>
							<label style="display: block;">物流负责人</label>
							<div class="form-group form-group-inline">
								<label for="">单位名称:</label> <input name="logis.logisPartName"
									value="${project.logis.logisPartName }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">地址:</label> <input name="logis.logisPartAdress"
									value="${project.logis.logisPartAdress }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">联系人:</label> <input
									name="logis.logisPartPersonName"
									value="${project.logis.logisPartPersonName }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">联系电话:</label> <input name="logis.logisPartPhone"
									value="${project.logis.logisPartPhone }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>

						<div>
							<label style="display: block;">收货人信息</label>
							<div class="form-group form-group-inline">
								<label for=""> 收货单位:</label> <input name="logis.inGoodsPartName"
									value="${project.logis.inGoodsPartName }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for=""> 收货地址:</label> <input name="logis.inGoodsAdress"
									value="${project.logis.inGoodsAdress }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for=""> 收货人:</label> <input name="logis.inGoodsName"
									value="${project.logis.inGoodsName }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for=""> 联系电话:</label> <input name="logis.inGoodsPhone"
									value="${project.logis.inGoodsPhone }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-group-file">
								<label for="" id="">国内运输文件：</label> <input name="image"
									type="file" id="file17" accept="application/pdf" /> <input
									type="text" name="file17" id="have17" value="0" hidden />
								<p>
								<c:if test="${empty  project.logis.inLogisFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.logis.inLogisFile}">  已上传</c:if>
							</p>
								<div>
									<a class="btn btn-default" type="button"><span
										class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
										查阅</a> <a id="button17" class="btn btn-default" type="button"><span
										class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
										选择文件</a>
								</div>
								<script>
									$(document)
											.ready(
													function() {
														$("#button17")
																.click(
																		function() {
																			$(
																					"#file17")
																					.click();
																		});
														$("#file17")
																.change(
																		function() {
																			var filePath = $(
																					this)
																					.val();
																			var have = $("#have17");
																			if (filePath != null
																					|| filePath != '') {
																				have
																						.attr(
																								"value",
																								"1");
																				have
																						.siblings(
																								"p")
																						.html(
																								"已上传");
																			}
																			if (filePath == null
																					|| filePath == '') {
																				have
																						.attr(
																								"value",
																								"0");
																				have
																						.siblings(
																								"p")
																						.html(
																								"未上传");
																			}
																		});
													});
								</script>
							</div>
						</div>

						<div>
							<label style="display: block;">出入库情况</label>
							<div class="form-group form-group-inline">
								<label for=""> 入库时间:</label> <input name="logis.inGoodsTime"
									value="${project.logis.inGoodsTime }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for=""> 联系人:</label> <input name="logis.warehouseName"
									value="${project.logis.warehouseName}" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for=""> 联系电话:</label> <input name="logis.warehousePhone"
									value="${project.logis.warehousePhone }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for=""> 仓库地址:</label> <input name="logis.warehouseAdress"
									value="${project.logis.warehouseAdress }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>

						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库时间1:</label> <input name="logis.outWareTime1"
									value="${project.logis.outWareTime1 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库货物数量1:</label> <input name="logis.outWareNum1"
									value="${project.logis.outWareNum1 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库时间2:</label> <input name="logis.outWareTime2"
									value="${project.logis.outWareTime2 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库货物数量2:</label> <input name="logis.outWareNum2"
									value="${project.logis.outWareNum2 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库时间3:</label> <input name="logis.outWareTime3"
									value="${project.logis.outWareTime3 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库货物数量3:</label> <input name="logis.outWareNum3"
									value="${project.logis.outWareNum3 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库时间4:</label> <input name="logis.outWareTime4"
									value="${project.logis.outWareTime4 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库货物数量4:</label> <input name="logis.outWareNum4"
									value="${project.logis.outWareNum4 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>
						<div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库时间5:</label> <input name="logis.outWareTime5"
									value="${project.logis.outWareTime5 }" type="text"
									class="form-control date" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-inline">
								<label for="">出库货物数量5:</label> <input name="logis.outWareNum5"
									value="${project.logis.outWareNum5 }" type="text"
									class="form-control" placeholder="" />
							</div>
						</div>

						<div class="form-textarea">
							<label for="">备注:</label>
							<textarea name="logis.info" class="" rows="4" placeholder="">
								${logis.info }
							</textarea>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">入库单：</label> <input name="image" type="file"
								id="file18" accept="application/pdf" /> <input type="text"
								name="file18" id="have18" value="0" hidden />
							<p>
								<c:if test="${empty  project.logis.inGoodsFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.logis.inGoodsFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button18" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button18")
															.click(
																	function() {
																		$(
																				"#file18")
																				.click();
																	});
													$("#file18")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have18");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">出库单：</label> <input name="image" type="file"
								id="file19" accept="application/pdf" /> <input type="text"
								name="file19" id="have19" value="0" hidden />
							<p>
								<c:if test="${empty  project.logis.outGoodsFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.logis.outGoodsFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button19" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button19")
															.click(
																	function() {
																		$(
																				"#file19")
																				.click();
																	});
													$("#file19")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have19");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
					</div>
				</div>
			</div>
			<!--保险-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse9"> 保险 </a>
					</h4>
				</div>
				<div id="collapse9" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="form-group form-group-inline">
							<label for="">被保险人:</label> <input name="insu.insuPerson"
								value="${project.insu.insuPerson }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline form-group-file">
							<label for="" id="">保单：</label> <input name="image" type="file"
								id="file20" accept="application/pdf" /> <input type="text"
								name="file20" id="have20" value="0" hidden />
							<p>
								<c:if test="${empty  project.insu.insuFile}">
								未上传
							</c:if>
								<c:if test="${not empty project.insu.insuFile}">  已上传</c:if>
							</p>
							<div>
								<a class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
									查阅</a> <a id="button20" class="btn btn-default" type="button"><span
									class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
									选择文件</a>
							</div>
							<script>
								$(document)
										.ready(
												function() {
													$("#button20")
															.click(
																	function() {
																		$(
																				"#file20")
																				.click();
																	});
													$("#file20")
															.change(
																	function() {
																		var filePath = $(
																				this)
																				.val();
																		var have = $("#have20");
																		if (filePath != null
																				|| filePath != '') {
																			have
																					.attr(
																							"value",
																							"1");
																			have
																					.siblings(
																							"p")
																					.html(
																							"已上传");
																		}
																		if (filePath == null
																				|| filePath == '') {
																			have
																					.attr(
																							"value",
																							"0");
																			have
																					.siblings(
																							"p")
																					.html(
																							"未上传");
																		}
																	});
												});
							</script>
						</div>
					</div>

				</div>
			</div>
			<!--国内采购-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse10"> 国内采购 </a>
					</h4>
				</div>
				<div id="collapse10" class="panel-collapse collapse in">
					<div class="panel-body">
						<div>
							<div class="form-group form-group-inline">
								<label for="">国内供应商:</label> <input name="supplier.insupplier1"
									value="${project.suppliers.insupplier1 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">联系人:</label> <input name="suppliers.conPerson1"
									value="${project.suppliers.conPerson1 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">产品名称:</label> <input name="suppliers.goodsName1"
									value="${project.suppliers.goodsName1 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">产品数量:</label> <input name="suppliers.goodsNum1"
									value="${project.suppliers.goodsNum1 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">合同金额:</label> <input name="suppliers.conMoney1"
									value="${project.suppliers.conMoney1 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">付款金额:</label> <input name="suppliers.conPayMoney1"
									value="${project.suppliers.conPayMoney1 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">回票情况:</label> <input name="suppliers.comBillInfo1"
									value="${project.suppliers.comBillInfo1 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-group-file">
								<label for="" id="">合同文件：</label> <input name="image"
									type="file" id="file21" accept="application/pdf" /> <input
									type="text" name="file21" id="have21" value="0" hidden />
								<p>
								<c:if test="${empty  project.suppliers.con1}">
								未上传
							</c:if>
								<c:if test="${not empty project.suppliers.con1}">  已上传</c:if>
							</p>
								<div>
									<a class="btn btn-default" type="button"><span
										class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
										查阅</a> <a id="button21" class="btn btn-default" type="button"><span
										class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
										选择文件</a>
								</div>
								<script>
									$(document)
											.ready(
													function() {
														$("#button21")
																.click(
																		function() {
																			$(
																					"#file21")
																					.click();
																		});
														$("#file21")
																.change(
																		function() {
																			var filePath = $(
																					this)
																					.val();
																			var have = $("#have21");
																			if (filePath != null
																					|| filePath != '') {
																				have
																						.attr(
																								"value",
																								"1");
																				have
																						.siblings(
																								"p")
																						.html(
																								"已上传");
																			}
																			if (filePath == null
																					|| filePath == '') {
																				have
																						.attr(
																								"value",
																								"0");
																				have
																						.siblings(
																								"p")
																						.html(
																								"未上传");
																			}
																		});
													});
								</script>
							</div>
						</div>

						<div>
							<div class="form-group form-group-inline">
								<label for="">国内供应商:</label> <input name="suppliers.insupplier2"
									value="${project.suppliers.insupplier2 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">联系人:</label> <input name="suppliers.conPerson2"
									value="${project.suppliers.conPerson2 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">产品名称:</label> <input name="suppliers.goodsName2"
									value="${project.suppliers.goodsName2 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">产品数量:</label> <input name="suppliers.goodsNum2"
									value="${project.suppliers.goodsNum2 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">合同金额:</label> <input name="suppliers.conMoney2"
									value="${project.suppliers.conMoney2 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">付款情况:</label> <input name="suppliers.conPayMoney2"
									value="${project.suppliers.conPayMoney2 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline">
								<label for="">回票情况:</label> <input name="suppliers.comBillInfo2"
									value="${project.suppliers.comBillInfo2 }" type="text"
									class="form-control" placeholder="" />
							</div>
							<div class="form-group form-group-inline form-group-file">
								<label for="" id="">合同文件：</label> <input name="image"
									type="file" id="file22" accept="application/pdf" /> <input
									type="text" name="file22" id="have22" value="0" hidden />
								<p>
								<c:if test="${empty  project.suppliers.con2}">
								未上传
							</c:if>
								<c:if test="${not empty project.suppliers.con2}">  已上传</c:if>
							</p>
								<div>
									<a class="btn btn-default" type="button"><span
										class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
										查阅</a> <a id="button22" class="btn btn-default" type="button"><span
										class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
										选择文件</a>
								</div>
								<script>
									$(document)
											.ready(
													function() {
														$("#button22")
																.click(
																		function() {
																			$(
																					"#file22")
																					.click();
																		});
														$("#file22")
																.change(
																		function() {
																			var filePath = $(
																					this)
																					.val();
																			var have = $("#have22");
																			if (filePath != null
																					|| filePath != '') {
																				have
																						.attr(
																								"value",
																								"1");
																				have
																						.siblings(
																								"p")
																						.html(
																								"已上传");
																			}
																			if (filePath == null
																					|| filePath == '') {
																				have
																						.attr(
																								"value",
																								"0");
																				have
																						.siblings(
																								"p")
																						.html(
																								"未上传");
																			}
																		});
													});
								</script>
							</div>
						</div>
						<div class="form-group">
							<label for="">国内采购合计金额:</label> <input
								name="suppliers.allInBuyMoney"
								value="${project.suppliers.allInBuyMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
					</div>
				</div>
			</div>
			<!--直接费用-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse11"> 直接费用 </a>
					</h4>
				</div>
				<div id="collapse11" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="form-group form-inline">
							<label for="">开征/电汇手续费1:</label> <input name="brank.TTMoney1"
								value="${project.brank.TTMoney1 }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-inline">
							<label for="">开征/电汇手续费2:</label> <input name="brank.TTMoney2"
								value="${project.brank.TTMoney2 }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-inline">
							<label for="">开征/电汇手续费3:</label> <input name="brank.TTMoney3"
								value="${project.brank.TTMoney3 }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-inline">
							<label for="">开征/电汇手续费4:</label> <input name="brank.TTMoney4"
								value="${project.brank.TTMoney4 }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-inline">
							<label for="">开征/电汇手续费5:</label> <input name="brank.TTMoney5"
								value="${project.brank.TTMoney5 }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-inline">
							<label for="">开征手续费:</label> <input name="brank.CMoney"
								value="${project.brank.CMoney }" type="text"
								class="form-control" placeholder="" />
						</div>


						<div class="form-group form-group-inline">
							<label for="">清关费:</label> <input name="clear.clearMoney"
								value="${project.clear.clearMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">仓储费:</label> <input name="clear.warehouseMoney"
								value="${project.clear.warehouseMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">商检费:</label> <input name="insp.inspMoney"
								value="${project.insp.inspMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">招标费:</label> <input name="bid.bidMoney"
								value="${project.bid.bidMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">保险费:</label> <input name="insu.insuMoney"
								value="${project.insu.insuMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">国内仓库费用:</label> <input
								name="logis.inWarehouseMoney"
								value="${project.logis.inWarehouseMoney }" type="text"
								class="form-control" placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">其他费用:</label> <input name="otherMoney"
								value="${project.otherMoney }" type="text" class="form-control"
								placeholder="" />
						</div>
						<div class="form-group form-group-inline">
							<label for="">费用合计:</label> <input name="totalMoney"
								value="${project.otherMoney }" type="text" class="form-control"
								placeholder="" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<input type="submit"> <a>完结</a>
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