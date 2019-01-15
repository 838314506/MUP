<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>工作面列表页面</title>
<%@ include file="../../../common/jsp/header.jsp"%>
<link rel="stylesheet" href="${ctx }/static/css/plugins/ztree/demo.css"
	type="text/css">
<link rel="stylesheet"
	href="${ctx }/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css"
	type="text/css">
<script type="text/javascript" src="<%=path%>view/execute/workSurface/js/check.js"></script>
</head>
<body>
	<div class="content_wrap">
		<div class="right">
			<div class="ibox float-e-margins">
				<div class="col-sm-12">
					<div class="alert alert-success" role="alert">
						<a id="hide"><img src="${ctx }/static/img/back.png"></a> <a
							id="showaa"><img src="${ctx }/static/img/next.png"></a>
						工作面基本信息
					</div>
					
					<!-- 工作面信息展示区 -->
					<table
						class="table table-striped table-bordered table-hover table-condensed">
						<tr>
							<td align="left">状态</td>
							<td colspan="3"><zhg:show value="${entity.workStatus }"
									codeTp="state" /></td>
						</tr>
						<tr>
							<td align="left">工作面名称</td>
							<td>${entity.workName}</td>
							<td align="left">工作面状态</td>
							<td><zhg:show codeTp="work_face_status"
									value="${entity.workFaceStatus }" /></td>
						</tr>
						<tr>
							<td align="left">煤种</td>
							<td><zhg:show codeTp="work_coal_type"
									value="${entity.workCoalType }" /></td>
							<td align="left">所在煤层</td>
							<td>${entity.workFloor }</td>
						</tr>
						<tr>
							<td align="left">回采方法</td>
							<td><zhg:show codeTp="work_mining"
									value="${entity.workMining }" /></td>
							<td align="left">落煤方式</td>
							<td><zhg:show codeTp="work_falling_coal"
									value="${entity.workFallingCoal }" /></td>
						</tr>
						<tr>
							<td align="left">采高(m)</td>
							<td>${entity.workHight }</td>
							<td align="left">采长(m)</td>
							<td>${entity.workLength }</td>
						</tr>
						<tr>
							<td align="left">走向长(m)</td>
							<td>${entity.workGoLength }/td>
							<td align="left">煤厚(m)</td>
							<td>${entity.workThick }</td>
						</tr>
						<tr>
							<td align="left">容重(T/m3)</td>
							<td>${entity.workCapacity }</td>
							<td align="left">计算储量(万吨)</td>
							<td>${entity.workReserve }</td>
						</tr>
						<tr>
							<td align="left">备注</td>
							<td colspan="3">${entity.workRemarks }</td>
						</tr>
					</table>
				</div>
				
				<!-- 工作面信息展示完毕 -->


				<!-- 工作面所属巷道信息展示区 -->

				<form id="searchForm" action="">
					<div class="col-sm-12">

						<!-- ------------按钮组 start------------ -->
						<div class="alert alert-success" role="alert">维护下属工作面基本信息</div>
						<div class="col-sm-8">
							<input id="ztreeid" name="ztreepId" type="hidden"
								value="${entity.workId }">
							<div class="btn-group hidden-xs" role="group">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" id="looks" name="parent/look.do">
									<i class="glyphicon glyphicon-zoom-in" aria-hidden="true"></i>查看
								</button>
								<button type="button" class="btn btn-primary"
									data-toggle="modal" id="create"
									name="execute/roadway/create.jsp?ztreepId=${entity.workId }">
									<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
								</button>
								<button type="button" class="btn btn-success"
									data-toggle="modal" id="update" name="parent/view.do">
									<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
								</button>
								<button type="button" class="btn btn-danger" data-toggle="modal"
									id="delete" name="parent/delete.do">
									<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
								</button>
								<button type="button" class="btn btn-info" data-toggle="modal"
									id="states" name="parent/state.do">
									<i class="glyphicon glyphicon-book" aria-hidden="true"></i>状态
								</button>
							</div>
						</div>
						<input id="pageNo" name="pageNo" type="hidden"
							value="${page.pageNo}" /> <input id="pageSize" name="pageSize"
							type="hidden" value="${page.pageSize}" />
						<table
							class="table table-striped table-bordered table-hover table-condensed">
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
								<c:forEach var="e" items="${entity.roadwayEntities}">
									<tr>
										<td><input type="radio" name="id1"
											value="${e.roadwayId }" /></td>
										<td>${e.roadwayName}</td>
										<td><zhg:show value="${e.roadwayType}"
												codeTp="roadwayType" /></td>
										<td>${e.roadwayLength }</td>
										<td>${e.roadwayPosition }</td>
										<td>${e.roadwayExcavation }</td>
										<td><zhg:show value="${e.roadywayStatus }" codeTp="state" /></td>
										<td>${e.roadywayRemarks }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- 工作面所属巷道信息展示完毕 -->
				</form>
			</div>
		</div>
		<!-- 树展示开始 -->
		<div id="p" class="content_wrap">
			<div class="zTreeDemoBackground left">
				<ul id="treeDemo" class="ztree"></ul>
			</div>
		</div>
		<!-- 树展示结束 -->
	</div>

	<script type="text/javascript"
		src="${ctx }/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
	<script type="text/javascript"
		src="${ctx }/static/js/plugins/ztree/jquery.ztree.excheck-3.5.js"></script>
	<script type="text/javascript"
		src="${ctx }/static/js/plugins/ztree/jquery.ztree.exedit-3.5.js"></script>
	<script type="text/javascript"
		src="${ctx }/static/js/content.min.js?v=1.0.0"></script>
	<script type="text/javascript"
		src="${ctx }/static/js/plugins/ztree/tree.js"></script>
</body>
</html>