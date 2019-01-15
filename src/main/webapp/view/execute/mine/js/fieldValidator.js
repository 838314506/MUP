$(function()
{
	
    //对当前表单进行验证
    $('form:eq(0)').bootstrapValidator({
    	message: '这个值是无效的',
    	//校验是显示图标
    	feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        //需要校验的namze名称
        fields: {
        	mineName: {
                validators: {  
                    notEmpty: {
                        message: '矿井名称是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 2,
                        max: 25,
                        message: '矿井名称长度不能低于2不能高于12'
                    }
                }
            },
            mineDesAbly: {
            	validators: {
            		notEmpty: {
            			message: '设计能力是必填项,不能为空!'
            		},
            		numeric: {
            			message: '设计能力只能输入数字!'
            		},
            		callback: {
                        message: '设计能力必须是大于0的有效数字!',
                        callback: function(value, validator) {
                            return value > 0;
                        }
                    }
            	}
            },
            startDate: {
            	validators: {
            		notEmpty: {
            			message: '投产日期是必填项,不能为空!'
            		},
            		date: {
            			format: 'YYYY-MM-DD',
            			message: '投产日期格式必须是yyyy-MM-dd'
            		}
            	}
            },
            mineTfmDate: {
	        	validators: {
	        		notEmpty: {
	        			message: '改造日期是必填项,不能为空!'
	        		},
	        		date: {
	        			format: 'YYYY-MM-DD',
	        			message: '改造日期格式必须是yyyy-MM-dd'
	        		}
	        	}
	        },
	        mineTfmAbly: {
            	validators: {
            		notEmpty: {
            			message: '改造能力是必填项,不能为空!'
            		},
            		numeric: {
            			message: '改造能力只能输入数字!'
            		},
            		callback: {
                        message: '改造能力必须是大于0的有效数字!',
                        callback: function(value, validator) {
                            return value > 0;
                        }
                    }
            	}
            }
        }
    });
    
});