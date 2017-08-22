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
		<title>高级搜索</title>
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
			.form-inline .form-control {
			    display: inline-block;
			    width: auto;
			    vertical-align: middle;
			}
		</style>
		</head>
	<body>
		<div class="container-fluid rs-school-height">
			<!--表单查询及添加-->
			<div class=" row">
				 <form class="form-inline" action="Bar_searchView" method="get">
					  <div class="form-group col-md-3 col-sm-3  col-xs-6 ">
					    <span>搜索条件：</span>
						<select class="form-control" name="search" style="height:100%;">
						<option value="0">内部编号</option>
						<option value="1">外贸合同号</option>
						<option value="2">最终用户</option>
						<option value="3">品名</option>
						<option value="4">代理商</option>
						<option value="5">海关编码</option>
						<option value="6">申报年度</option>
						</select>					  
					  </div>
					  		<input type="text" name="testValue" >
					  　　　　<input type="submit" class="btn btn-default" value="&nbsp&nbsp搜索&nbsp&nbsp " >　　
					</form>	
			 </div>
			<br /><br />
		
			<table class="table table-striped table-bordered table-hover table-condensed text-center">
					<thead>
					<tr>
						<td colspan="10" class="text-left">业务信息列表</td>
					</tr>
				</thead>
			<thead>
					<tr class="info ">
						<td>序号</td>
						<td>内部编号</td>
						<td>项目名称</td>
						<td>品名</td>
						<td>申报日期</td>
						<td>状态</td>
						<!-- <td>操作</td> -->
					</tr>
			</thead>
				<tbody>
				<s:iterator value="pageBean.recordList" status="indexs">
					<tr>
						<td>${indexs.index+1 }</td>
						<td>${inNum }</td>
						<td>${name }</td>
						<td>${productName }</td>
						<td>${clear.portDate }</td>
						<td>
							<c:if test="${isOver == 2 }">
								已完结
							</c:if>
							<c:if test="${isOver == 1 }">
								在执行
							</c:if>
						</td>
						<!-- <td>
							<input class="btn btn-default" type="submit" value="提交">
							<a id="n11" class="btn btn-default rs-modalBtn" type="button">详情</a>
						</td> -->
					</tr>
					</s:iterator>
				</tbody>
				</table>
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
					  		<a href="Bar_searchView?pageNum=1" aria-label="Previous">
					  			<span aria-hidden="true">首页</span>
					  		</a>
				  		</s:else>
				  	</li>
				  	<!-- 上页键 -->
				    <li>
				    	<s:if test="pageBean.currentPage-1 > 0">
					    	<a href="Bar_searchView?pageNum=${pageBean.currentPage-1 }" href="#" aria-label="Previous">
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
				    	<c:if test="${pageBean.currentPage != null }">
				    		<c:if test="${pageBean.currentPage != pageNums }">
				    			<li><a href="Bar_searchView?pageNum=${pageNums }">${pageNums }</a></li>
				    		</c:if>
				    	</c:if>
				    </s:iterator>
					<!-- 下页键 -->
				    <li>
				    	<s:if test="pageBean.currentPage+1 <= pageBean.pageCount">
					    	<a href="Bar_searchView?pageNum=${pageBean.currentPage+1 }" aria-label="Next">
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
					     		<span aria-hidden="true">尾页</span>
					     	</a>
						</s:if>
						<s:else>
							<a href="Bar_searchView?pageNum=${pageBean.pageCount }" aria-label="Previous">
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