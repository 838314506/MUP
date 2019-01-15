$(function() {

	$('#look').click(function() {
		if ($.selectedCount('look')) {
			var url = root + $(this).attr('name');
			$("#searchForm").attr('action', url).submit();
		}
	});
	$('#state').click(function() {
		if ($.selectedCount('state')) {
			var url = root + $(this).attr('name');
			$("#searchForm").attr('action', url).submit();
		}
	});
	
	
	
	$.extend({'selectedCount':function(type){
		var selected = $('input[name=ids]:checked').length;
		
		if(type == 'look'){
			if(selected != 1)
			{
				swal({title:"温馨提示",text:"查看信息时,您只能选择一条记录查看"});
				return false;
			}
		}else if(type == 'state'){
			if(selected == 0)
			{
				swal({title:"温馨提示",text:"修改状态时,您只能选择一条记录修改"});
				return false;
			}
		}
		
		return true;
	}});

});