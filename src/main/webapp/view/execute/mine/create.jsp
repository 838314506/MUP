<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>矿井添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<%
		String mId = (String)request.getParameter("mId");
	%>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/mine/create.do" method="post" class="form-horizontal" role="form">
					<input type="hidden" name="manageEntity.mId" value="<%=mId%>">
                    <fieldset>
                        <legend>矿井基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">矿井名称</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="mineName" />
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_name">瓦斯等级</label>
                          <div class="col-sm-4">
                          	 <zhg:select codeTp="gas" name="mineLv" cls="form-control"/>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">设计能力（万吨）</label>
                          <div class="col-sm-4">
                          <input class="form-control" type="text" name="mineDesAbly" />
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">投产日期</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text"  name="startDate" placeholder="1990-01-01"/>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">改造能力（万吨）</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text"  name="mineTfmAbly"/>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">改造日期</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="date"  name="mineTfmDate" placeholder="1990-01-01"/>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">备注</label>
                          <div class="col-sm-4">
                          	 <input class="form-control" type="text" name="remarks">
                          </div>
                       </div>
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                              	<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="${path }/view/execute/mine/js/fieldValidator.js"></script>
</html>