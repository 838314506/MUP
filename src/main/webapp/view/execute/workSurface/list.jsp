<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>工作面列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link rel="stylesheet" href="${ctx }/static/css/plugins/ztree/demo.css" type="text/css">
		<link rel="stylesheet" href="${ctx }/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" type="text/css">
	</head>
	<body>
		<div class="content_wrap">
		<div class="right">
			<div class="ibox float-e-margins">
							<div class="col-sm-12">
					<div class="alert alert-success" role="alert">
					<a id="hide"><img src="${ctx }/static/img/back.png"></a>
					<a id="showaa"><img src="${ctx }/static/img/next.png"></a>
					采区基本信息</div>
					<table class="table table-hover table-bordered">
						<tr class="active">
							<td align="left">状态</td>
							<td colspan="3"><zhg:show value="${page.list[0].miningEntity.miningStatus}" codeTp="state"></zhg:show></td>
						</tr>
						<tr class="success">
							<td align="left">采区名称</td>
							<td>${page.list[0].miningEntity .miningName }</td>
							<td align="left">所在煤层</td>
							<td>${page.list[0].miningEntity.miningLevel}</td>
						</tr>
						<tr class="warning">
							<td align="left">煤种</td>
							<td><zhg:show value="${page.list[0].miningEntity.miningType}" codeTp="work_coal_type"></zhg:show></td>
							<td align="left">走向长</td>
							<td>${page.list[0].miningEntity.miningHight}</td>
						</tr>
						<tr class="danger">
							<td align="left">采长</td>
							<td>${page.list[0].miningEntity.miningLength}</td>
							<td align="left">煤厚</td>
							<td>${page.list[0].miningEntity.miningSize}</td>
						</tr>
						<tr class="danger">
							<td align="left">采高</td>
							<td>${page.list[0].miningEntity.miningWidth}</td>
							<td align="left">容重</td>
							<td>${page.list[0].miningEntity.miningWeight}</td>
						</tr>
						<tr class="danger">														
							<td align="left">备注</td>
							<td colspan="3">${page.list[0].miningEntity.remarks}</td>
						</tr>
					</table>
				</div>
				
				
				
				
			
			
				<form id="searchForm" action="">
				<div class="col-sm-12">

					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">维护下属工作面基本信息</div>
	                <div class="col-sm-8">
	                 <input id="ztree" type="hidden" value="${page.list[0].miningEntity.miningId}">
	                	<div class="btn-group hidden-xs" role="group">
	                <%-- 	<shiro:hasPermission name="person:create"> --%>
	                	<button type="button" class="btn btn-info" data-toggle="modal" id="select" name="surface/select.do">
		                            <i class="glyphicon glyphicon-zoom-in" aria-hidden="true"></i>查看
		                        </button>
		                	<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="execute/workSurface/create.jsp?mid=${page.list[0].miningEntity.miningId}">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>
	                <%-- 	</shiro:hasPermission>
	                	<shiro:hasPermission name="person:update"> --%>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="surface/load.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                   <%--      	</shiro:hasPermission> --%>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="surface/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
	                        <button type="button" class="btn btn-primary" data-toggle="modal" id="status" name="surface/status.do">
	                            <i class="glyphicon glyphicon-refresh" aria-hidden="true"></i>状态转换
	                        </button>	                  
		                 </div>
	                </div>	                
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
									<th>选择</th>
									<th>工作面名称</th>
									<th>所在煤层</th>
									<th>回采方法</th>
									<th>落煤方式</th>
									<th>计算储量(万吨)</th>
									<th>状态</th>
									<th>备注</th>						
								</tr>
					        </thead>
					        <tbody>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <th><input type="checkbox" name="ids" value="${e.workId}"/></th>
						                <th>${e.workName}</th>
						                <th>${e.workFloor }</th>
						                <th>
						                <zhg:show value="${e.workMining}" codeTp="work_mining"></zhg:show>
						                </th>
						                 <th>
						                  <zhg:show value="${e.workFallingCoal}" codeTp="work_falling_coal"></zhg:show>
						                 </th>
						                  <th> ${e.workReserve}</th>
						                  <th> <zhg:show value="${e.workStatus}" codeTp="state"></zhg:show></th>
						                  <th>${e.workRemarks}</th>					                   
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}</div>
			     </div>
			     </form>
			     
			     
			    			
				<form id="searchForm1" action="">
				<div class="col-sm-12">

					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">维护下属巷道基本信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
	                <%-- 	<shiro:hasPermission name="person:create"> --%>
	                	<button type="button" class="btn btn-primary" data-toggle="modal" id="select1" name="">
		                            <i class="glyphicon glyphicon-zoom-in" aria-hidden="true"></i>查看
		                        </button>
		                	<button type="button" class="btn btn-primary" data-toggle="modal" id="create1" name="execute/roadway/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>
	                <%-- 	</shiro:hasPermission>
	                	<shiro:hasPermission name="person:update"> --%>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update1" name="">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                   <%--      	</shiro:hasPermission> --%>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete1" name="">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
	                        <button type="button" class="btn btn-info" data-toggle="modal" id="status1" name="">
	                            <i class="glyphicon glyphicon-book" aria-hidden="true"></i>状态
	                        </button>	                  
		                 </div>
	                </div>	                
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
									<th>选择</th>
									<th>巷道名称</th>
									<th>巷道类别</th>
									<th>位置(点)</th>
									<th>设计总长(m)</th>
									<th>掘进断面(m2)</th>
									<th>状态</th>
									<th>备注</th>						
								</tr>
					        </thead>
					        <tbody>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <th><input type="checkbox" name="ids1" value=""/></th>
						                <th></th>
						                <th></th>
						                <th>
						                
						                </th>
						                 <th>
						                
						                 </th>
						                  <th> </th>
						                  <th> <zhg:show value="" codeTp="state"></zhg:show></th>
						                  <th></th>					                   
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}</div>
			     </div>
			     </form>      
			</div>
			</div>
			
			
			<div  id="p" class="content_wrap">
					<div class="zTreeDemoBackground left" >
						<ul id="treeDemo" class="ztree"></ul>
					</div>
			</div>
			
		</div>
		
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/jquery.ztree.excheck-3.5.js"></script>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/jquery.ztree.exedit-3.5.js"></script>
		<script type="text/javascript" src="${ctx }/static/js/content.min.js?v=1.0.0"></script>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/tree.js"></script>
		<script type="text/javascript" src="${ctx }/view/execute/workSurface/js/surface.js"></script>
		<script type="text/javascript" src="${ctx }/view/execute/workSurface/js/roadway.js"></script>
	</body>
</html>