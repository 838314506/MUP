<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>矿井添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/manage/update.do" method="post" class="form-horizontal" role="form">
				<input type="hidden" name="mId" value="${entity.mId }">
               <legend>菜单基本信息</legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" >煤矿编号</label>
                          	<div class="col-sm-3">
                            	 <zhg:select name="mNumber" codeTp="number" def="true" cls="form-control" value="${entity.mNumber }"></zhg:select>
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" >煤矿名称</label>
                          	<div class="col-sm-3">
                            	<input class="form-control"  name="mName" type="text" value="${entity.mName}" />
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">煤矿简称</label>
                          	<div class="col-sm-3">
                            	<input class="form-control"  name="mLogogram" type="text" value="${entity.mLogogram}"/>
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">煤矿简拼</label>
                          	<div class="col-sm-3">
                            	<input class="form-control"  name="mPinyin" type="text" value="${entity.mPinyin }" />
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">煤矿地域</label>
                          	<div class="col-sm-3">
                            	<input class="form-control"  name="mAddress" type="text" value="${entity.mAddress }" />
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">联系人 	</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="mContact" type="text" value="${entity.mContact }" />
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">联系电话</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="mPhone" type="text"  value="${entity.mPhone}"/>
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">法人</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="mFaren" type="text" value="${entity.mFaren }" />
                          	</div>
                       	</div>
                       	</div>
                       	
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuname">注册地址</label> 
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="regAddress" type="text" value="${entity.regAddress }"/>
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menupid">整合能力/年(万吨) </label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="ability" type="text" value="${entity.ability }"/>
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menulevel">井田面积(km2)</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="area"  type="text" value="${entity. area }"/>
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuuri">保有储量(万吨)</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="possessionReserve" type="text" value="${entity.possessionReserve }"/>
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menupermission">探明储量(万吨)</label>
                          	<div class="col-sm-3">
                            	<input class="form-control" id="" name="detectReserve" type="text" value="${entity.detectReserve }"/>
                          	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="menuweight">开拓方式</label>
                          	<div class="col-sm-3">
                          	 <zhg:select name="openUp" codeTp="open_type" def="true" cls="form-control" value="${entity.openUp }"></zhg:select>
                          	</div>
                       	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="roleremark">备注</label>
                          	<div class="col-sm-10">
                          		<div  >
                          			<input class="form-control" id="" name="remarks" type="text" value="${entity.remarks }"/>
								</div>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="roleremark">状态</label>
                          	<div class="col-sm-10">
                          		<div  >
                          			 <zhg:select name="status" codeTp="state" def="true" cls="form-control" value="${entity.status }"></zhg:select>
								</div>
                          	</div>
                       	</div>
                       
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
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="${path }/view/execute/mine/js/mine.js"></script>
</html>