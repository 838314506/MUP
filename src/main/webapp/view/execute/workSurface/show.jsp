<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>工作面基本信息</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/surface/query.do" method="post" enctype="multipart/form-data"class="form-horizontal" role="form">
				<input type="hidden" id="workId" name="workId" value="${entity.workId }">
                    <fieldset>
                        <legend>工作面信息</legend>
                        
                             <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">状态</label>
                          <div class="col-sm-10">
                             <zhg:select codeTp="state" def="true"  cls="form-control" name="workStatus" value="${entity.workStatus }"></zhg:select>
                          </div>
                        </div>
                                                                                            
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">工作面名称</label>
                          <div class="col-sm-4">
                             <input class="form-control"name="workName"  type="text" value="${entity.workName}"/>
                          </div>
                          <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">工作面状态</label>
                          <div class="col-sm-4">
                             <zhg:select codeTp="work_face_status" def="true"  cls="form-control" name="workFaceStatus" value="${entity.workFaceStatus }"></zhg:select>
                          </div>
                       </div>
                          </div>
                          
                          
                       
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">煤种</label>
                          <div class="col-sm-4">
                             <zhg:select codeTp="work_coal_type" def="true"  cls="form-control" name="workCoalType" value="${entity.workCoalType }"></zhg:select>
                          </div>
                               <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">所在煤层</label>
                          <div class="col-sm-4">
                              <input class="form-control"name="workFloor"  type="text" value="${entity.workFloor }">
                          </div>
                       </div>
                          </div>
                          
                      
                       
                      <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">回采方法</label>
                          <div class="col-sm-4">
                             <zhg:select codeTp="work_mining" def="true"  cls="form-control" name="workMining" value="${entity.workMining }"></zhg:select>
                          </div>
                                 <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">落煤方式</label>
                          <div class="col-sm-4">
                             <zhg:select codeTp="work_falling_coal" def="true"  cls="form-control" name="workFallingCoal" value="${entity.workFallingCoal }"></zhg:select>
                          </div>
                          </div>
                          </div>
                
                          
                          
                          <div class="form-group">
                           <label class="col-sm-2 control-label" for="ds_username">采高(m)</label>
                          <div class="col-sm-4">
                             <input class="form-control" name="workHight" type="text"  value="${entity.workHight }"/>
                          </div>
                             <div class="form-group">
                           <label class="col-sm-2 control-label" for="ds_username">采长(m)</label>
                          <div class="col-sm-4">
                             <input class="form-control" name="workLength" type="text"  value="${entity.workLength }"/>
                          </div>
                          </div>
                          </div>
                          
                         
                          
                            <div class="form-group">
                           <label class="col-sm-2 control-label" for="ds_username" >走向长(m)</label>
                          <div class="col-sm-4">
                             <input class="form-control" name="workGoLength" type="text" value="${entity.workGoLength }"/>
                          </div>
                               <div class="form-group">
                           <label class="col-sm-2 control-label" for="ds_username" >煤厚(m)</label>
                          <div class="col-sm-4">
                             <input class="form-control" name="workThick" type="text" value="${entity.workThick }"/>
                          </div>
                          </div>
                          </div>
                          
                        
                          
                             <div class="form-group">
                           <label class="col-sm-2 control-label" for="ds_username">容重(T/m3)</label>
                          <div class="col-sm-4">
                             <input class="form-control" name="workCapacity" type="text" value="${entity.workCapacity }"/>
                          </div>
                              <div class="form-group">
                           <label class="col-sm-2 control-label" for="ds_username">计算储量(万吨)</label>
                          <div class="col-sm-4">
                             <input class="form-control" name="workReserve" type="text" value="${entity.workReserve }"/>
                          </div>
                          </div>
                          </div>
                          
                         
                          
                             <div class="form-group">
                           <label class="col-sm-2 control-label" for="ds_username">备注</label>
                          <div class="col-sm-10">
                             <input class="form-control" name="workRemarks" type="text" value="${entity.workRemarks }"/>
                          </div>
                          </div>
                          
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           <div class="col-sm-4">
                              <input type="submit" value="关闭" class="btn btn-primary"/>
                           </div>                    
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
</html>