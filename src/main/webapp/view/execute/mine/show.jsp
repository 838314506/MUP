<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>矿井信息展示页面</title>
		<%@ include file="../../../../common/jsp/header.jsp"%>
		<link href="<%=path%>static/css/plugins/treegrid/jquery.treegrid.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
					<div class="col-sm-12">
						<table class="tree table table-striped table-bordered table-hover table-condensed">
					            <tr>
					                <th>状态</th>
					                <th colspan="3">
					                	<zhg:show value="${entity.mineStatus }" codeTp="state"></zhg:show>
					                </th>
					            </tr>
					            <tr>
					                <th>矿井名称</th>
					                <th>${entity.mineName }</th>
					                <th>瓦斯等级</th>
					                <th>
					                	<zhg:show value="${entity.mineLv }" codeTp="gas"/>
					                </th>
					            </tr>
					            <tr>
					                <th>设计能力(万吨)</th>
					                <th>${entity.mineDesAbly }</th>
					                <th>投产日期</th>
					                <th>
					                	<fmt:formatDate value="${entity.startDate }" pattern="yyyy-MM-dd"/>
					                </th>
					            </tr>
					            <tr>
					                <th>改造能力(万吨)</th>
					                <th>${entity.mineTfmAbly }</th>
					                <th>改造日期</th>
					                <th>
					                	<fmt:formatDate value="${entity.mineTfmDate }" pattern="yyyy-MM-dd"/>
					                </th>
					            </tr>
					        	<tr>
					                <th>备注</th>
					                <th colspan="3">${entity.remarks }</th>
					            </tr>
						</table>
						<div class="col-sm-8">
		                	<div class="btn-group hidden-xs" role="group">
		                        <button type="button" class="btn btn-danger" data-toggle="modal" id="shutdo">
		                            	关闭
		                        </button>
			                 </div>
		                </div>
					</div>
				</form>
			</div>
		</div>
		<script type="text/javascript" src="<%=path%>static/js/plugins/treegrid/jquery.treegrid.min.js"></script>
		<script type="text/javascript" src="<%=path%>static/js/plugins/treegrid/jquery.treegrid.bootstrap3.js"></script>
		<script type="text/javascript">
			$(function()
			{
				var index = parent.layer.getFrameIndex(window.name);
				
				$('#shutdo').click(function()
				{
					parent.$('input[name=ids]:checked').removeAttr('checked');
					parent.layer.close(index);
				});
			});
		</script>
	</body>
</html>