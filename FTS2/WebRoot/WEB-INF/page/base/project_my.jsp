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
		<title>我的项目</title>
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
			<!--表单查询及添加-->
			<div class="rs-school-height row">
			</div>
		<!--数据表格部分--> 
			<table class="table table-striped table-bordered table-hover table-condensed text-center">
					<thead>
					<tr>
						<td colspan="10" class="text-left">我的项目</td>
					</tr>
				</thead>
				
			<thead>
					<tr class="info ">
						<td>序号</td>
						<td>内部编号</td>
						<td>项目名称</td>
						<td>品名</td>
						<td>申报日期</td>
						<td>操作</td>
					</tr>
			</thead>
				
				<tbody>
				<s:iterator value="pageBean.recordList" status="indexs">
					<tr>
						<td>${indexs.index+1 }</td>
						<td>${inNum }</td>
						<td>${finalUser }</td>
						<td>${productName }</td>
						<td>${creatTime }</td>
						<td>
							<a id="n11" href="Project_toSubmitProject?id=${id }" class="btn btn-default rs-modalBtn" type="button">详情</a>
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
					  		<a href="Bar_toProjectMy?pageNum=1" aria-label="Previous">
					  			<span aria-hidden="true">首页</span>
					  		</a>
				  		</s:else>
				  	</li>
				  	<!-- 上页键 -->
				    <li>
				    	<s:if test="pageBean.currentPage-1 > 0">
					    	<a href="Bar_toProjectMy?pageNum=${pageBean.currentPage-1 }" href="#" aria-label="Previous">
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
				    		<li><a href="Bar_toProjectMy?pageNum=${pageNums }">${pageNums }</a></li>
				    	</c:if>
				    </s:iterator>
					<!-- 下页键 -->
				    <li>
				    	<s:if test="pageBean.currentPage+1 <= pageBean.pageCount">
					    	<a href="Bar_toProjectMy?pageNum=${pageBean.currentPage+1 }" aria-label="Next">
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
							<a href="Bar_toProjectMy?pageNum=${pageBean.pageCount }" aria-label="Previous">
					     		<span aria-hidden="true">尾页</span>
					     	</a>
						</s:else>
				    </li>
				</ul>
				</div>
			</div>
			
			
		</div>
		<!-- Modal 1-->
		<!--<div class="modal fade" id="myModal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close less" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">增加教师</h4>
			      </div>
			      <form class="form-horizontal">
				    <div class="modal-body">
							<div class="form-group">
							    <label for="inputText" class="col-xs-offset-3 col-xs-2 control-label">学校编号</label>
							    <label for="inputText" class="col-xs-5 control-label rs-text">100145</label>
							</div>
							<div class="form-group">
							    <label for="inputText" class="col-xs-offset-3 col-xs-2 control-label">教师编号</label>
							    <label for="inputText" class="col-xs-5 control-label rs-text">245353</label>
							</div>
							<div class="form-group">
							    <label for="inputText" class="col-xs-offset-3 col-xs-2 control-label">教师姓名</label>
							    <label for="inputText" class="col-xs-5 control-label rs-text">都一样</label>
							</div>
							<div class="form-group">
							    <label for="inputText" class="col-xs-offset-3 col-xs-2 control-label">联系电话</label>
							    <div class="col-xs-5">
							      <input type="text" class="form-control" id="inputText" data-vaild="^(1[\d]{10}|0\d{2,3}\-\d{7,8})$" data-errmsg="联系电话格式错误"/>
							    </div>
							</div>
							<div class="form-group">
							    <label for="inputText" class="col-xs-offset-3 col-xs-2 control-label">家庭地址</label>
							    <div class="col-xs-5">
							      <input type="text" class="form-control" id="inputText" data-vaild="^[\u4e00-\u9fa5]{2,30}$" data-errmsg="请填写家庭地址，只能为中文"/>
							    </div>
							</div>
				    </div>
				    <div class="modal-footer">
				        <input type="button" class="btn btn-default less" data-dismiss="modal" value="取消"/>
				        <input type="submit" class="btn btn-primary" value="确认添加"/>
				    </div>
					</form>
			    </div>
			</div>
		</div>-->
		<!-- Modal 2-->
		<!--<div class="modal fade" id="myModal-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
			    <div class="modal-content">
				    <div class="modal-header">
				        <button type="button" class="close less" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">更改教师信息</h4>
				    </div>
				    <form  class="form-horizontal">
				    <div class="modal-body">
							<div class="form-group">
							    <label for="rs-schoolAcc" class="col-xs-offset-3 col-xs-2 control-label">学校编号</label>
							    <div class="col-xs-5">
							      <input type="text" class="form-control" id="rs-schoolAcc" disabled/>
							    </div>
							</div>
							<div class="form-group">
							    <label for="rs-schoolNam" class="col-xs-offset-3 col-xs-2 control-label">学校名字</label>
							    <div class="col-xs-5">
							      <input type="text" class="form-control" id="rs-schoolNam" disabled/>
							    </div>
							</div>
							<div class="form-group">
							    <label for="rs-teacherAcc" class="col-xs-offset-3 col-xs-2 control-label">教师编号</label>
							    <div class="col-xs-5">
							      <input type="text" class="form-control" id="rs-teacherAcc" disabled/>
							    </div>
							</div>
							<div class="form-group">
							    <label for="rs-teacherNam" class="col-xs-offset-3 col-xs-2 control-label">教师姓名</label>
							    <div class="col-xs-5">
							      <input type="text" class="form-control" id="rs-teacherNam" disabled/>
							    </div>
							</div>
							<div class="form-group">
							    <label for="rs-teacherCal" class="col-xs-offset-3 col-xs-2 control-label">联系电话</label>
							    <div class="col-xs-5">
							      <input type="text" class="form-control" id="rs-teacherCal" data-vaild="^(1[\d]{10}|0\d{2,3}\-\d{7,8})$" data-errmsg="联系电话格式错误"/>
							    </div>
							</div>
							<div class="form-group">
							    <label for="rs-teacherAdd" class="col-xs-offset-3 col-xs-2 control-label">家庭地址</label>
							    <div class="col-xs-5">
							      <input type="text" class="form-control" id="rs-teacherAdd" data-vaild="^[\u4e00-\u9fa5]{2,30}$" data-errmsg="请填写家庭住址，只能为中文"/>
							    </div>
							</div>
							<div class="form-group">
							    <label for="rs-teacherTxt" class="col-xs-offset-3 col-xs-2 control-label">相关备注</label>
							    <div class="col-xs-5">
							      <input type="text" class="form-control" id="rs-teacherTxt" data-vaild="^[\u4e00-\u9fa5]{2,36}$" data-errmsg="请填写相关备注，只能为中文"/>
							    </div>
							</div>
				    </div>
				    <div class="modal-footer">
					        <input type="button" class="btn btn-default less" data-dismiss="modal" value="取消"/>
					        <input type="submit" class="btn btn-primary" value="确认更改"/>
				    </div>
					</form>
			    </div>
			</div>
		</div>-->
		<!--<script type="text/javascript">
              $("form").Vaild();
              //	清除提示
            	setInterval(function(){
            	if($('#myModal-1').css("display") == "block" || $('#myModal-2').css("display") == "block" || $('#myModal-3').css("display") == "block"){
					return true;
				}else{
				   posclear();
				}
				},100);
			
			$('.less').on('click',function(){
				posclear();
			});
			
			function posclear(){
				$('.popover').css('display','none');
				$('.modal-body .form-group').find("div").removeClass("has-error");
				$('.modal-body .form-group').find("div").removeClass("has-success");
			}
			//设置模态框值
			$('.rs-modalBtn').click(function(){
				var num = $(this).attr('id').slice(1);
				$('#rs-schoolAcc').val(num+123);
				$('#rs-schoolNam').val(num+123);
				$('#rs-teacherAcc').val(num+123);
				$('#rs-teacherNam').val(num+123);
				$('#rs-teacherCal').val(num+123);
				$('#rs-teacherAdd').val(num+123);
				$('#rs-teacherTxt').val(num+123);
				$('#myModal-2').modal('show');
			});
		</script>-->
	</body>
</html>