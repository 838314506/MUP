var setting = {
		
			view: {
				dblClickExpand: false,
				showLine: false
			},
			
			data: {
				simpleData: {
					enable: true
				}
			},
			
			callback: {
				onClick: onClick
			}
			
			
			
			
		};

		
		
		function onClick(e,treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			zTree.expandNode(treeNode);
			
			var treenode=treeNode.open;
			
			
			var type=treeNode.t
			
			
			var url;
			if(type=="ManageEntity"){
				
				url="mine/query.do?ztreeid=";
				
			}else if(type=="MineEntity"){
				
				url="mining/query.do?ztreeid=";
				
			}else if(type=="MiningEntity"){
				url="surface/query.do?ztreeid=";
				
			}else if(type=="SurfaceEntity"){
				
				url="work/query.do?ztreeid=";
			}else if(type=="RoadwayEntity"){
				
				url="roadway/query.do?ztreeid=";
			}
			//主键
			var ztreeid=treeNode.id
//			副键
			var ztreepId=treeNode.pId
			
	document.location.href=root+url+ztreeid+"&ztreepId="+ztreepId;	
				
		}
		
		var entityid=$("#ztree").val();
		
		
			
		$(document).ready(function(){
			
			
				//发出get异步请求查询返回json结果集
				$.get(root + '/ztree/query.do?id='+entityid, function(data) {
				//将返回的json集合字符串转换成树结构赋值给id为treeDemo的div显示
				$.fn.zTree.init($("#treeDemo"), setting, data);
				}, 'json');
				
				//关闭树窗口
				$("#hide").click(function(){
		    	
		    	//修改使用right样式div的属性改变divde 宽度
		    	$(".right").css({"width":"100%"});
		    	//修改使用right样式div的属性改变divde 宽度
		    	$(".left").css({"width":"5%"});
		    	//把id为p显示的div 隐藏 
		    	$("#p").hide();
				});
			
			    //开启树窗口
				$("#showaa").click(function(){
		    	//修改使用right样式div的属性改变divde 宽度
		        $(".right").css({"width":"80%"});
		    	//修改使用right样式div的属性改变divde 宽度
		    	$(".left").css({"width":"20%"});
			    //把id为p隐藏的div 显示
				$("#p").show();
						  
				});
		});
		
		
		