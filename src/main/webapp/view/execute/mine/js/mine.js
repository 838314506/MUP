$(function()
{

 	$('#show').click(function()
	{
 		
		if($.select('show'))
		{
			var ids = $('input:radio:checked').val();
			layer.open({
			  type: 2,
			  title: '矿井基本信息',
			  shadeclose: true,
			  shade: 0.8,
			  area: ['65%', '65%'],
			  content: root+'mine/view/2.do?ids='+ids
			}); 
		}
	});
	
 	//修改选中的节点数据
 	$('#status').click(function()
 	{
 		var ids = $('input:radio:checked').val();
 		if($.select('status'))
		{
 			window.location = root+'/mine/view/3.do?ids='+ids;
		}
 	});
   
 	$.extend({'select':function(type){
		var selected = $('input[name=ids]:checked').length;
		
		if(type == 'show'){
			if(selected != 1)
			{
				swal({title:"温馨提示",text:"查看信息时,您只能选择一条记录查看"});
				return false;
			}
		}else if(type == 'status'){
			if(selected == 0)
			{
				swal({title:"温馨提示",text:"修改状态时,您只能选择一条记录修改"});
				return false;
			}
		}
		
		return true;
	}});
});