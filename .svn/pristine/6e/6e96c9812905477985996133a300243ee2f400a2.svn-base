<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>添加煤矿基本信息</title>
<%@ include file="../../../common/jsp/header.jsp"%>
<link href="${path }/static/css/plugins/file-input/fileinput.min.css"
	rel="stylesheet">
</head>
<body>
			<div class="ibox float-e-margins">
				<form action="${path}/manage/create.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
						<legend>菜单基本信息</legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" >煤矿编号</label>
                          	<div class="col-sm-3">
                            	 <zhg:select name="mNumber" codeTp="number" def="true" cls="form-control"></zhg:select>
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" >煤矿名称</label>
                          	<div class="col-sm-3">
                            	<input class="form-control"  name="mName" type="text" />
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">煤矿简称</label>
                          	<div class="col-sm-3">
                            	<input class="form-control"  name="mLogogram" type="text" />
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">煤矿简拼</label>
                          	<div class="col-sm-3">
                            	<input class="form-control"  name="mPinyin" type="text"  />
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">煤矿地域</label>
                          	<div class="col-sm-3">
                            	<input class="form-control"  name="mAddress" type="text"  />
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">联系人 	</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="mContact" type="text"  />
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">联系电话</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="mPhone" type="text"  />
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">法人</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="mFaren" type="text"  />
                          	</div>
                       	</div>
                       	</div>
                       	
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">注册地址</label> 
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="regAddress" type="text" />
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menupid">整合能力/年(万吨) </label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="ability" type="text" />
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menulevel">井田面积(km2)</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="area"  type="text" />
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuuri">保有储量(万吨)</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="possessionReserve" type="text"/>
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menupermission">探明储量(万吨)</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="detectReserve" type="text"/>
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuweight">开拓方式</label>
                          	<div class="col-sm-3">
                          	 <zhg:select name="openUp" codeTp="open_type" def="true" cls="form-control"></zhg:select>
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="roleremark">备注</label>
                          	<div class="col-sm-10">
                          		<div  >
                          			<input class="form-control" id="" name="remarks" type="text"/>
								</div>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="roleremark">状态</label>
                          	<div class="col-sm-10">
                          		<div  >
                          			 <zhg:select name="status" codeTp="state" def="true" cls="form-control"></zhg:select>
								</div>
                          	</div>
                       	</div>
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           <div class="col-sm-3">
                              <input type="submit" value="提交" class="btn btn-primary"/>
                           </div>
                           <label class="col-sm-2 control-label"></label>
                           <div class="col-sm-3">
                              <input type="reset" value="重置" class="btn btn-danger"/>
                           </div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>

	
	
</body>
<script type="text/javascript"
	src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
<script type="text/javascript" src="./js/dictionary.js"></script>
</html>