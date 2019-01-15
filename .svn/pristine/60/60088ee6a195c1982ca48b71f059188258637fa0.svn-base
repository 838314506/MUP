<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>矿井展示列表页面</title>
<%@ include file="../../../../common/jsp/header.jsp"%>
		<link rel="stylesheet" href="${ctx }/static/css/plugins/ztree/demo.css" type="text/css">
		<link rel="stylesheet" href="${ctx }/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" type="text/css">
</head>
<script type="text/javascript" src="<%=path%>view/execute/roadway/js/check.js"></script>
<body>
	<div class="wrapper wrapper-content animated fadeInRight">
	  <div class="content_wrap">
		<div class="right">
	
		<!--巷道信息  -->
		<form id="searchForm">

			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">
					<a id="hide"><img src="${ctx }/static/img/back.png"></a>
					<a id="showaa"><img src="${ctx }/static/img/next.png"></a>
				维护下属巷道详细信息</div>
				<div class="col-sm-8">
					<div class="btn-group hidden-xs" role="group">
						<button type="button" class="btn btn-primary" data-toggle="modal"
							id="create" name="execute/roadway/create.jsp">
							<i class="glyphicon glyphicon-plus" aria-hidden="true">添加</i>
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal"
							id="update" name="roadway/view.do">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true">修改</i>
						</button>
						<button type="button" class="btn btn-danger" data-toggle="modal"
							id="delete" name="roadway/delete.do">
							<i class="glyphicon glyphicon-trash" aria-hidden="true">删除</i>
						</button>
						<button type="button" class="btn btn-primary" data-toggle="modal"
							id="look" name="roadway/look.do">
							<i aria-hidden="true">查看</i>
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal"
							id="state" name="roadway/state.do">
							<i aria-hidden="true">状态转换</i>
						</button>
					</div>
				</div>
				<!-- ------------按钮组 end------------ -->
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
							<th>位置（点）</th>
							<th>设计总长（m）</th>
							<th>掘进面积（m2）</th>
							<th>状态</th>
							<th>备注</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="e" items="${page.list}">
							<tr>
								<td><input type="radio" name="ids" value="${e.roadwayId }" /></td>
								<td>${e.roadwayName}</td>
								<td><zhg:show value="${e.roadwayType}" codeTp="roadwayType" /></td>
								<td>${e.roadwayLength }</td>
								<td>${e.roadwayPosition }</td>
								<td>${e.roadwayExcavation }</td>
								<td><zhg:show value="${e.roadywayStatus }" codeTp="state" /></td>
								<td>${e.roadywayRemarks }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="page">${page}</div>
			</div>
		</form>
	</div>
			<div id="p" class="content_wrap">
					<div class="zTreeDemoBackground left" >
						<ul id="treeDemo" class="ztree"></ul>
					</div>
			</div>
	</div>
	</div>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/jquery.ztree.excheck-3.5.js"></script>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/jquery.ztree.exedit-3.5.js"></script>
		<script type="text/javascript" src="${ctx }/static/js/content.min.js?v=1.0.0"></script>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/tree.js"></script>
	</body>
</body>
</html>