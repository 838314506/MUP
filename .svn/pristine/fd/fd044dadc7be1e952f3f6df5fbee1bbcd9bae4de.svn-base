/**
 *	js工具类
 */
$(function()
{
	//查看选中的节点数据
 	$('#select').click(function(){
		if($.selectedCount('select')){
			var url = root+$(this).attr('name');
			$("#searchForm").attr('action', url).submit();
		}
 	});
 	
 	//修改状态
 	$('#status').click(function(){
 		if($.selectedCount('status')){
 			var url = root+$(this).attr('name');
 			$("#searchForm").attr('action', url).submit();
 		}
 	});
	
	/**
	 * 自定义(选中条数)函数
	 * type: 来判断是 查看详细信息还是修改状态
	 * 查看详细信息只能选中一条记录
	 * 修改状态只能选中一条记录
	 * 返回true则可以继续执行, false则反之
	 */
	$.extend({'selectedCount':function(type){
		var selected = $('input[name=ids]:checked').length;
		if(type == 'select'){
			if(selected != 1){
				swal({title:"温馨提示",text:"查看信息时,您只能选择一条记录查看?"});
				return false;
			}
		} else if(type == 'status'){
			if(selected != 1){
				swal({title:"温馨提示",text:"修改状态时,您只能选择一条记录进行状态修改?"});
				return false;
			}
		}
		return true;
	}});
});