<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>查询煤矿基本信息</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">数据字典详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
	                		<shiro:hasPermission name="dictionary:create">
	                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="manage/create.jsp">
		                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
		                        </button>
	                		</shiro:hasPermission>
		                	
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="dictionary/view.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="dictionary/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
		                 </div>
	                </div>
	                <div class="col-sm-4">
	                	<input class="form-control" id="search" name="dataName" value="${entity.dataName }" type="text" placeholder="查询内容 回车搜索"/>
	                </div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/>选择</th>
					                <th>煤矿编号</th>
					                <th>煤矿名称</th>
					                <th>煤矿地域</th>
					                <th>整合能力/年(万吨)</th>
					                <th>保有储量(万吨)</th>
					                <th>探明储量(万吨)</th>
					                <th>状态</th>
					                <th>备注</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.mId}"/></td>
						               <td>${e.mNumber}</td>
						               <td>${e.mName }</td>
						               <td>${e.mAddress}</td>
						               <td>${e.ability }</td>
						               <td>${e.possessionReserve }</td>
						               <td>${e.detectReserve }</td>
						               <td>${e.remarks }</td>
						               <td>${e.remarks}</td>
						               
						              
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}</div>
			     </div>
			     </form>
			</div>
		</div>
	</body>
</html>