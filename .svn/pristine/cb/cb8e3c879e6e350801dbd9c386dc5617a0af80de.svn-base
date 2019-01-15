<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>采区展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link rel="stylesheet" href="${ctx }/static/css/plugins/ztree/demo.css" type="text/css">
		<link rel="stylesheet" href="${ctx }/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" type="text/css">
		<script type="text/javascript" src="${path }/view/execute/mining/js/mining.js"></script>
		<script type="text/javascript" src="${path }/static/js/tool1.js"></script>
	</head>
	<body>
		<div class="content_wrap">
		<div class="right">
		
			<div class="ibox float-e-margins">
				<div class="col-sm-12">
					<div class="alert alert-success" role="alert">
						<a id="hide"><img src="${ctx }/static/img/back.png"></a>
						<a id="showaa"><img src="${ctx }/static/img/next.png"></a>
						矿井基本信息
					</div>
					<table class="table table-bordered">
						<tr>
							<td align="right">状态</td>
							<td colspan="3"><zhg:show value="${mine.mineStatus }" codeTp="state"></zhg:show></td>
						</tr>
						<tr>
							<td align="right">矿井名称</td>
							<td>${mine.mineName }</td>
							<td align="right">瓦斯等级</td>
							<td><zhg:show value="${mine.mineLv }" codeTp="gas"></zhg:show></td>
						</tr>
						<tr>
							<td align="right">设计能力(万吨)</td>
							<td>${mine.mineDesAbly }</td>
							<td align="right">投产日期</td>
							<td><fmt:formatDate value="${mine.startDate }" pattern="yyyy-MM-dd"/></td>
						</tr>
						<tr>
							<td align="right">改造能力(万吨)</td>
							<td>${mine.mineTfmAbly }</td>
							<td align="right">改造日期</td>
							<td><fmt:formatDate value="${mine.mineTfmDate }" pattern="yyyy-MM-dd"/></td>
						</tr>
						<tr>
							<td align="right">备注</td>
							<td colspan="3"><textarea cols="20" rows="2" readonly="readonly">${mine.remarks }</textarea></td>
						</tr>
					</table>
				</div>
				<form id="searchForm" action="">
					<div class="col-sm-12">
						<!-- ------------按钮组 start------------ -->
		                <div class="alert alert-success" role="alert">维护下属采区基本信息</div>
		                <div class="col-sm-12">
		                 <input id="ztree" type="hidden" value="${mine.mineId }">
		                	<div class="btn-group" role="group">
				                	<button type="button" class="btn btn-info" data-toggle="modal" id="select" name="mining/select.do">
			                            <i class="glyphicon glyphicon-zoom-in" aria-hidden="true"></i>查看
			                        </button>
				                	<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="execute/mining/create.jsp?pid=${mine.mineId }">
			                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
			                        </button>
			                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="mining/load.do">
			                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
			                        </button>
			                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="mining/delete.do">
			                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
			                        </button>
			                        <button type="button" class="btn btn-primary" data-toggle="modal" id="status" name="mining/status.do">
			                            <i class="glyphicon glyphicon-refresh" aria-hidden="true"></i>状态转换
			                        </button>
			                 </div>
		                </div>
		                <%-- <div class="col-sm-4">
		                	<input class="form-control" id="search" name="userName" value="${entity.userName }" type="text" placeholder="查询内容 回车搜索"/>
		                </div> --%>
						<!-- ------------按钮组 end------------ -->
							<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
							<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
			                <table class="table table-striped table-bordered table-hover table-condensed">
						        <thead>
						            <tr>
						                <th><input type="checkbox" id="checkall"/></th>
						                <th>采区名称</th>
						                <th>计算储量(万吨)</th>
						                <th>状态</th>
						                <th>备注</th>
						            </tr>
						        </thead>
						        <tbody>
						        	<c:forEach var="u" items="${page.list }" varStatus="v">
							            <tr>
							                <td><input type="checkbox" name="ids" value="${u.miningId }"/></td>
							                <td>${u.miningName }</td>
							                <td>${u.miningLevel }</td>
							                <td><zhg:show value="${u.miningStatus }" codeTp="state"></zhg:show></td>
							                <td>${u.remarks }</td>
							            </tr>
						            </c:forEach>
						        </tbody>
						    </table>
					    	<div class="page">${page}</div>
					</div>
				</form>
			</div>
		
		
			<!--巷道信息  -->
		<form id="search1" action="">
			<input type="hidden" name="ztreepId" value="${mine.mineId }"/>
			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">
				维护下属巷道详细信息</div>
				<div class="col-sm-8">
					<div class="btn-group hidden-xs" role="group">
						<button type="button" class="btn btn-primary" data-toggle="modal"
							id="create1" name="execute/roadway/create.jsp?ztreepId=${mine.mineId }">
							<i class="glyphicon glyphicon-plus" aria-hidden="true">添加</i>
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal"
							id="update1" name="parent/view.do">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true">修改</i>
						</button>
						<button type="button" class="btn btn-danger" data-toggle="modal"
							id="delete1" name="parent/delete.do">
							<i class="glyphicon glyphicon-trash" aria-hidden="true">删除</i>
						</button>
						<button type="button" class="btn btn-primary" data-toggle="modal"
							id="show1" name="parent/look.do">
							<i aria-hidden="true">查看</i>
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal"
							id="status1" name="parent/state.do">
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
						<c:forEach var="e" items="${mine.roadwayEntities}" >
							<tr>
								<td>
									<input type="radio" name="id1" value="${e.roadwayId }" />
								</td>
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

		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/jquery.ztree.excheck-3.5.js"></script>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/jquery.ztree.exedit-3.5.js"></script>
		<script type="text/javascript" src="${ctx }/static/js/content.min.js?v=1.0.0"></script>
		<script type="text/javascript" src="${ctx }/static/js/plugins/ztree/tree.js"></script>
	</body>
</html>