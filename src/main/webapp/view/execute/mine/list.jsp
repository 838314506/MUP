<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>矿井展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link rel="stylesheet" href="${ctx }/static/css/plugins/ztree/demo.css" type="text/css">
		<link rel="stylesheet" href="${ctx }/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" type="text/css">
		<script type="text/javascript" src="<%=path%>view/execute/mine/js/mine.js"></script>
	</head>
	<body>
	<div class="content_wrap">
		<div class="right">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<div class="alert alert-success" role="alert">
						<a id="hide"><img src="${ctx }/static/img/back.png"></a>
						<a id="showaa"><img src="${ctx }/static/img/next.png"></a>
						煤矿详细信息
					</div>
					<div>
						<table class="table table-striped table-bordered table-hover table-condensed">
							<thead>
								<tr>
									<th>煤矿编号</th>
									<th>${page.list[0].manageEntity.mNumber }</th>
									<th>煤矿名称</th>
									<th>${page.list[0].manageEntity.mName }</th>
									<th>煤矿简称</th>
									<th>${page.list[0].manageEntity.mLogogram }</th>
								</tr>
								<tr>
									<th>煤矿简拼</th>
									<th>${page.list[0].manageEntity.mPinyin }</th>
									<th>煤矿地域</th>
									<th>${page.list[0].manageEntity.mAddress }</th>
									<th>联系人</th>
									<th>${page.list[0].manageEntity.mContact }</th>
								</tr>
								<tr>
									<th>联系电话</th>
									<th>${page.list[0].manageEntity.mPhone }</th>
									<th>法人</th>
									<th>${page.list[0].manageEntity.mFaren }</th>
									<th>注册地址</th>
									<th>${page.list[0].manageEntity.regAddress }</th>
								</tr>
								<tr>
									<th>整合能力(万吨)</th>
									<th>${page.list[0].manageEntity.ability }</th>
									<th>井田面积(km2)</th>
									<th>${page.list[0].manageEntity.area }</th>
									<th>保有储量(万吨)</th>
									<th>${page.list[0].manageEntity.possessionReserve }</th>
								</tr>
								<tr>
									<th>探明储量(万吨)</th>
									<th>${page.list[0].manageEntity.detectReserve }</th>
									<th>开拓方式</th>
									<th><zhg:show value="${page.list[0].manageEntity.openUp }" codeTp="open_type"/></th>
									<th>状态</th>
									<th><zhg:show value="${page.list[0].manageEntity.status }" codeTp="state"/></th>
								</tr>
								<tr>
									<th>备注</th>
									<th colspan="5">${page.list[0].manageEntity.remarks }</th>
								</tr>
							</thead>
						</table>
					</div>
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">维护下属矿井详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
	                		<button type="button" class="btn btn-info" data-toggle="modal" id="show" name="">
		                        <i class="glyphicon glyphicon-zoom-in" aria-hidden="true"></i>查看
		                    </button>
	                		<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="execute/mine/create.jsp?mId=${manageEntity.mId }">
		                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
		                    </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="mine/view/1.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="mine/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
	                        <button type="button" class="btn btn-info" data-toggle="modal" id="status" name="mine/view/3.do">
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
					                <th>矿井名称</th>
					                <th>瓦斯等级</th>
					                <th>设计能力(万吨)</th>
					                <th>改造能力(万吨)</th>
					                <th>投产日期</th>
					                <th>改造日期</th>
					                <th>状态</th>
					                <th>备注</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td>
						                	<input type="radio" name="ids" value="${e.mineId }"/>
						                </td>
						                <td>${e.mineName }</td>
						                <td><zhg:show value="${e.mineLv }" codeTp="gas"/></td>
						                <td>${e.mineDesAbly }</td>
						                <td>${e.mineTfmAbly }</td>
						                <td><fmt:formatDate value="${e.startDate }" pattern="yyyy-MM-dd"/></td>
						                <td><fmt:formatDate value="${e.mineTfmDate }" pattern="yyyy-MM-dd"/></td>
						                <td><zhg:show value="${e.mineStatus }" codeTp="state"/></td>
						                <td>${e.remarks }</td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				 <div class="page">${page}</div>
			     </div>
			     </form>
			</div>
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