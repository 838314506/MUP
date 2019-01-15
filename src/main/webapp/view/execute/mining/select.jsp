<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>采区信息信息页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<table class="table table-bordered table-hover">
					<tr>
						<td>状态</td>
						<td colspan="3"><zhg:show value="${entity.miningStatus }" codeTp="state"></zhg:show></td>
					</tr>
					<tr>
						<td>采区名称</td>
						<td>${entity.miningName }</td>
						<td>所在煤层</td>
						<td>${entity.miningLevel }</td>
					</tr>
					<tr>
						<td>煤种</td>
						<td> 
							<zhg:show value="${entity.miningType }" codeTp="work_coal_type"></zhg:show>
						</td>
						<td>走向长(m)</td>
						<td>${entity.miningHight }</td>
					</tr>
					<tr>
						<td>采长(m)</td>
						<td>${entity.miningLength }</td>
						<td>煤厚(m)</td>
						<td>${entity.miningSize }</td>
					</tr>
					<tr>
						<td>采高(m)</td>
						<td>${entity.miningWidth }</td>
						<td>容重(T/m3)</td>
						<td>${entity.miningWeight }</td>
					</tr>
					<tr>
						<td>备注</td>
						<td colspan="3"><textarea cols="20" rows="2">${entity.remarks }</textarea></td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>