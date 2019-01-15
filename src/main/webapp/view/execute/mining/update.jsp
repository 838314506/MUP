<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>采区修改页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/mining/update.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
                    <fieldset>
						<legend>采区基本信息 </legend>
                       	<div class="form-group">
                       		<input type="hidden" name="mine.mineId" value="${me.mine.mineId }"/>
                       		<input type="hidden" name="miningId" value="${me.miningId }"/>
                          	<label class="col-sm-2 control-label" for="miningname">采区状态</label>
                          	<div class="col-sm-10">
                          		<zhg:show value="${me.miningStatus }" codeTp="state"></zhg:show>
                            	<input class="form-control"  value="${me.miningStatus }" name="miningStatus" type="hidden" readonly="readonly" />
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="miningname">采区名称</label>
                          	<div class="col-sm-10">
                            	<input class="form-control"  value="${me.miningName }" name="miningName" type="text" placeholder="填写采区名称"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                           <label for="disabledSelect" class="col-sm-2 control-label">所在煤层</label>
                           <div class="col-sm-10">
                            	<input class="form-control"  value="${me.miningLevel }" name="miningLevel" type="text" placeholder="所在煤层"/>
                           </div>
                        </div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="loginname">煤种</label>
                          	<div class="col-sm-10">
                          	<zhg:select codeTp="work_coal_type" cls="form-control" name="miningType" value="${me.miningType }"></zhg:select>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="loginpass">走向长(m)</label>
                          	<div class="col-sm-10">
                            	<input class="form-control"  value="${me.miningHight }" name="miningHight" type="text" placeholder="填写走向长"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="retypepass">采长(m)</label>
                          	<div class="col-sm-10">
                            	<input class="form-control"  value="${me.miningLength }" name="miningLength" type="text" placeholder="请填写采长"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="email">煤厚(m)</label>
                          	<div class="col-sm-10">
                            	<input class="form-control"  value="${me.miningSize }" name="miningSize" type="text" placeholder="请填写煤厚"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="phone">采高(m)</label>
                          	<div class="col-sm-10">
                            	<input class="form-control"  value="${me.miningWidth }" name="miningWidth" type="text" placeholder="请填写采高"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="phone">容重(T/m3)</label>
                          	<div class="col-sm-10">
								<input type="text" name="miningWeight" value="${me.miningWeight }" placeholder="请填写容重" />
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="phone">备注</label>
                          	<div class="col-sm-10">
								<textarea name="remarks">${me.remarks }</textarea>
                          	</div>
                       	</div>
                       	<!-- <div class="form-group">
                          	<label class="col-sm-2 control-label" for="phone">计算储量(万吨)</label>
                          	<div class="col-sm-10">
								<input type="text" name="roleIds" placeholder="请填写储量" />
                          	</div>
                       	</div> -->
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="submit" value="提交" class="btn btn-primary"/>
                           </div>
                           <label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="reset" value="重置" class="btn btn-danger"/>
                           </div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
</html>