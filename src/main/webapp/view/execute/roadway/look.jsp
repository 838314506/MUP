<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>巷道查看</title>
<%@ include file="../../../common/jsp/header.jsp"%>
<link href="${path }/static/css/plugins/file-input/fileinput.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- <div>
			<div class="col-sm-4">
				<input type="button" value="返回上一页" class="btn btn-success"
					onclick="javascript:history.back();" />
			</div>
		</div> -->
		<div class="ibox float-e-margins">
			<form action="${path }/parent/create.do" method="post"
				class="form-horizontal" role="form">
				<input type="hidden" name="radwayId"
					value="${roadwayEntity.roadwayId }">
				<fieldset>
					<div class="form-group">
						<label class="col-sm-2 control-label">巷道名称</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayName"
								value="${roadwayEntity.roadwayName}" readonly="readonly" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">巷道类型</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayName"
								value=" <zhg:show value="${roadwayEntity.roadwayType}" codeTp="roadwayType" />"
								readonly="readonly" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">状态</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadywayStatus"
								value=" <zhg:show value="${roadwayEntity.roadywayStatus}" codeTp="state" />"
								readonly="readonly" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">位置（点）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayPosition"
								required="required" value="${roadwayEntity.roadwayPosition}"
								readonly="readonly" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">掘进方式</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayName"
								value=" <zhg:show value="${roadwayEntity.roadwayExcavation}" codeTp="roadwayType" />"
								readonly="readonly" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">支护方式</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayName"
								value=" <zhg:show value="${roadwayEntity.roadwaySupport}" codeTp="roadway_support" />"
								readonly="readonly" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">岩性</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayName"
								value=" <zhg:show value="${roadwayEntity.roadwayLithology}" codeTp="roadway_lithology" />"
								readonly="readonly" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">设计长度（m）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayLength"
								required="required" value="${roadwayEntity.roadwayLength}" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">净宽（m）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayWidth"
								required="required" value="${roadwayEntity.roadwayWidth}" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">净高（m）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayHeight"
								required="required" value="${roadwayEntity.roadwayHeight}" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">掘进断面（m）</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwaySection"
								required="required" value="${roadwayEntity.roadwaySection}" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">所在煤层</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadywayFloor"
								required="required" value="${roadwayEntity.roadywayFloor}"
								readonly="readonly" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">煤种</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadwayName"
								value=" <zhg:show value="${roadwayEntity.roadywayCoalType}" codeTp="work_coal_type" />"
								readonly="readonly" />

						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">备注</label>
						<div class="col-sm-4">
							<input class="form-control" type="text" name="roadywayRemarks"
								required="required" value="${roadwayEntity.roadywayRemarks}"
								readonly="readonly">
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>