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
		<title>许可证-在执行</title>
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
			/*@media (max-width: 765px){.rs-school-btn{position:absolute;top:100px;}}*/
			/*重构 popover */
			.popover{border:1px solid #C00;color:#000;}
			.popover .popover-content{padding:1px 5px;}
			.popover.top>.arrow:after{border-top-color:#C00;}
			.form-inline .form-control {
			    display: inline-block;
			    width: auto;
			    vertical-align: middle;
			}
		</style>
		</head>
	<body>
		<!--表单部分-->
		<div class="container-fluid">
			<div class="rs-school-height row">
			</div>
			<table class="table table-striped table-bordered table-hover table-condensed text-center">
					<thead>
					<tr>
						<td colspan="10" class="text-left">许可证-在执行</td>
					</tr>
				</thead>
				
			<thead>
					<tr class="info ">
						<td>序号</td>
						<td>内部编号</td>
						<td>供货商</td>
						<td>最终用户</td>
						<td>品名</td>
						<td>型号</td>
						<td>数量</td>
						<td>付款金额及币种</td>
						<td>操作</td>
					</tr>
			</thead>
				
				<tbody>
				<s:iterator value="pageBean.recordList" status="indexs">
					<tr>
						<td>${indexs.index+1 }</td>
						<td>${inNum }</td>
						<td>${suppliers.insupplier1 }&nbsp;
							${suppliers.insupplier2 }&nbsp;
							${suppliers.insupplier3 }&nbsp;
							${suppliers.insupplier4 }&nbsp;
							${suppliers.insupplier5 }&nbsp;
							${suppliers.insupplier6 }&nbsp;
							${suppliers.insupplier7 }&nbsp;
							${suppliers.insupplier8 }&nbsp;
							${suppliers.insupplier9 }&nbsp;
							${suppliers.insupplier10 }&nbsp;
						</td>
						<td>${finalUser }</td>
						<td>${productName }</td>
						<td>${models }</td>
						<td>${projectNum }</td>
						<td>${outMoney }</td>
						<td>
							<c:if test="${businesUser.id == admins.id && isBusines == 1 }">
								<a id="n11" href="Busines_toProjectBusines?id=${id }" class="btn btn-default rs-modalBtn" type="button">提交工作</a>
							</c:if>
							
							<a id="n11" href="Busines_toShowBusines?id=${id }" class="btn btn-default rs-modalBtn" type="button">详情</a>
						</td>
					</tr>
				</s:iterator>
				</tbody>
				</table>
		<!--分页-->
			<div class="clearfix">
				<span style="font-size:16px;">共<span><s:property value="pageBean.pageCount" /></span>页，<span>
				 <s:property value="pageBean.recordCount" /></span>条记录， 当前显示第<span>
					<s:if test="pageBean.currentPage == 0">
						1
					</s:if>
					<s:else>
						<s:property value="pageBean.currentPage" />
					</s:else>
					</span>页</span>
				<div class="pull-right">
				<ul class="pagination pull-right">
					<!-- 首页键 -->
				  	<li>
				  		<s:if test="pageBean.pageCount <= 1">
							<a aria-label="Previous">
					     		<span aria-hidden="true">首页</span>
					     	</a>
						</s:if>
						<s:else>
					  		<a href="Bar_toBusinesing?pageNum=1" aria-label="Previous">
					  			<span aria-hidden="true">首页</span>
					  		</a>
				  		</s:else>
				  	</li>
				  	<!-- 上页键 -->
				    <li>
				    	<s:if test="pageBean.currentPage-1 > 0">
					    	<a href="Bar_toBusinesing?pageNum=${pageBean.currentPage-1 }" href="#" aria-label="Previous">
					    		<span aria-hidden="true">&laquo;</span>
					    	</a>
				    	</s:if>
				    	<s:else>
					  		<a aria-label="Previous">
					  			<span aria-hidden="true">&laquo;</span>
					  		</a>
				  		</s:else>
				    </li>
				    <!-- 分页键 -->
				    <s:iterator begin="pageBean.beginPageIndex" end="pageBean.endPageIndex" var="pageNums">
				    	<c:if test="${pageBean.currentPage == pageNums }">
				    		<li><a>${pageNums }</a></li>
				    	</c:if>
				    	<c:if test="${pageBean.currentPage != pageNums }">
				    		<li><a href="Bar_toBusinesing?pageNum=${pageNums }">${pageNums }</a></li>
				    	</c:if>
				    </s:iterator>
					<!-- 下页键 -->
				    <li>
				    	<s:if test="pageBean.currentPage+1 <= pageBean.pageCount">
					    	<a href="Bar_toBusinesing?pageNum=${pageBean.currentPage+1 }" aria-label="Next">
					    		<span aria-hidden="true">&raquo;</span>
					    	</a>
				    	</s:if>
				    	<s:else>
				    		<a href="#" aria-label="Next">
					    		<span aria-hidden="true">&raquo;</span>
					    	</a>
				    	</s:else>
				    </li>
				    <!-- 尾页键 -->
				    <li>
				    	<s:if test="pageBean.pageCount <= 1">
							<a aria-label="Previous">
					     		<span aria-hidden="true">首页</span>
					     	</a>
						</s:if>
						<s:else>
							<a href="Bar_toBusinesing?pageNum=${pageBean.pageCount }" aria-label="Previous">
					     		<span aria-hidden="true">尾页</span>
					     	</a>
						</s:else>
				    </li>
				</ul>
				</div>
			</div>
		</div>
	</body>
</html>