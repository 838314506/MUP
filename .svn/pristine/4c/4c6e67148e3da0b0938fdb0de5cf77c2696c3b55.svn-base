<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>矿井展示列表页面</title>
<%@ include file="../../../common/jsp/header.jsp"%>
</head>
<script type="text/javascript" src="<%=path%>view/manage/coal/js/coal.js"></script>
<body>
	<div class="wrapper wrapper-content animated fadeInRight">
		
		<div class="ibox float-e-margins">
			<form id="searchForm" action="">
				<div class="alert alert-success" role="alert">煤矿详细信息</div>
					<table
						class="table table-striped table-bordered table-hover table-condensed">
						<thead>
							<tr>
								<th>煤矿编号</th>
								<th>${entity.mNumber}</th>
								<th>煤矿名称</th>
								<th>${entity.mName }</th>
								<th>煤矿简称</th>
								<th>${entity.mLogogram }</th>
							</tr>
							<tr>
								<th>煤矿简拼</th>
								<th>${entity.mPinyin }</th>
								<th>煤矿地域</th>
								<th>${entity.mAddress }</th>
								<th>联系人</th>
								<th>${entity.mContact }</th>
							</tr>
							<tr>
								<th>联系电话</th>
								<th>${entity.mPhone }</th>
								<th>法人</th>
								<th>${entity.mFaren }</th>
								<th>注册地址</th>
								<th>${entity.regAddress }</th>
							</tr>
							<tr>
								<th>整合能力(万吨)</th>
								<th>${entity.ability }</th>
								<th>井田面积(km2)</th>
								<th>${entity.area }</th>
								<th>保有储量(万吨)</th>
								<th>${entity.possessionReserve }</th>
							</tr>
							<tr>
								<th>探明储量(万吨)</th>
								<th>${entity.detectReserve }</th>
								<th>开拓方式</th>
								<th><zhg:show value="${entity.openUp }"
										codeTp="open_type" /></th>
								<th>状态</th>
								<th><zhg:show value="${entity.status }"
										codeTp="state" /></th>
							</tr>
							<tr>
								<th>备注</th>
								<th colspan="5">${entity.remarks }</th>
							</tr>
						</thead>
					</table>
					

			</form>
		</div>
	</div>
		
</body>
</html>