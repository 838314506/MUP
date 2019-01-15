$(function() {

	$('#looks').click(function() {
		if ($.selectedCount('looks')) {
			var url = root + $(this).attr('name');
			$("#searchForm").attr('action', url).submit();
		}
	});
	$('#states').click(function() {
		if ($.selectedCount('states')) {
			var url = root + $(this).attr('name');
			$("#searchForm").attr('action', url).submit();
		}
	});
	
	
	
	$.extend({'selectedCount':function(type){
		var selected = $('input[name=id1]:checked').length;
		
		if(type == 'looks'){
			if(selected != 1)
			{
				swal({title:"温馨提示",text:"查看信息时,您只能选择一条记录查看"});
				return false;
			}
		}else if(type == 'states'){
			if(selected == 0)
			{
				swal({title:"温馨提示",text:"修改状态时,您只能选择一条记录修改"});
				return false;
			}
		}
		
		return true;
	}});

});