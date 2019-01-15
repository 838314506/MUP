<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>巷道修改页面</title>
<%@ include file="../../../common/jsp/header.jsp"%>
<link href="${path }/static/css/plugins/file-input/fileinput.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="wrapper wrapper-content animated fadeInRight">
		<div>
			<div class="col-sm-4">
				<input type="button" value="返回上一页" class="btn btn-success"
					onclick="javascript:history.back();" />
			</div>
		</div>
		<div class="ibox float-e-margins">
			<form action="${path }/parent/update.do" method="post"
				class="form-horizontal" role="form">
				<input type="hidden" name="ztreepId" value="${ztreepId }">
				<input type="hidden" name="roadwayId"
					value="${roadwayEntity.roadwayId }">
				<fieldset>
					<legend>巷道基本信息</legend>
					<div class="form-group">
						<label class="col-sm-2 control-label">巷道名称</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayName"
								value="${roadwayEntity.roadwayName}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">巷道类型</label>
						<div class="col-sm-4">
							<zhg:select codeTp="roadwayType" name="roadwayType"
								cls="form-control" def="true"
								value="${roadwayEntity.roadwayType}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">位置（点）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayPosition"
								required="required" value="${roadwayEntity.roadwayPosition}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">掘进方式</label>
						<div class="col-sm-4">
							<zhg:select codeTp="roadwayType" name="roadwayExcavation"
								cls="form-control" def="true"
								value="${roadwayEntity.roadwayExcavation}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">状态</label>
						<div class="col-sm-4">
							<zhg:select codeTp="state" name="roadywayStatus"
								cls="form-control" def="true"
								value="${roadwayEntity.roadywayStatus }" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">支护方式</label>
						<div class="col-sm-4">
							<zhg:select codeTp="roadway_support" name="roadwaySupport"
								cls="form-control" def="true"
								value="${roadwayEntity.roadwaySupport}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">岩性</label>
						<div class="col-sm-4">
							<zhg:select codeTp="roadway_lithology" name="roadwayLithology"
								cls="form-control" def="true"
								value="${roadwayEntity.roadwayLithology}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">设计长度（m）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayLength"
								required="required" value="${roadwayEntity.roadwayLength}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">净宽（m）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayWidth"
								required="required" value="${roadwayEntity.roadwayWidth}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">净高（m）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayHeight"
								required="required" value="${roadwayEntity.roadwayHeight}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">掘进断面（m）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwaySection"
								required="required" value="${roadwayEntity.roadwaySection}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">所在煤层</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadywayFloor"
								required="required" value="${roadwayEntity.roadywayFloor}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">煤种</label>
						<div class="col-sm-4">
							<zhg:select codeTp="work_coal_type" name="roadywayCoalType"
								cls="form-control" def="true"
								value="${roadwayEntity.roadywayCoalType}" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">备注</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadywayRemarks"
								required="required" value="${roadwayEntity.roadywayRemarks}">
						</div>
					</div>
				</fieldset>
				<fieldset>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="ds_host"></label>
						<div class="col-sm-4">
							<input type="submit" value="保存" class="btn btn-primary" /> <input
								type="reset" value="重置" class="btn btn-danger" id="resetForm" />
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/roadway.js"></script>
</html>