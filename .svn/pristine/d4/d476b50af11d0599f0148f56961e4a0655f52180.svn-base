$(function() {
	// 对当前表单进行验证
	$('form:eq(0)').bootstrapValidator({
		message : '这个值是无效的',
		// 校验是显示图标
		feedbackIcons : {
			valid : 'glyphicon glyphicon-ok',
			invalid : 'glyphicon glyphicon-remove',
			validating : 'glyphicon glyphicon-refresh'
		},
		// 需要校验的name名称
		fields : {
			roadwayName : {
				validators : {
					notEmpty : {
						message : '巷道名称是必填项,不能为空!'
					},
					stringLength : {
						min : 2,
						max : 10,
						message : '巷道长度不能低于2不能高于10'
					}
				}
			},
			roadwayType : {
				validators : {
					callback : {
						message : '请选择!',
						callback : function(value, validator) {
							return value != 0;
						}
					}
				}
			},
			roadwayExcavation : {
				validators : {
					callback : {
						message : '请选择!',
						callback : function(value, validator) {
							return value != 0;
						}
					}
				}
			},
			roadwaySupport : {
				validators : {
					callback : {
						message : '请选择!',
						callback : function(value, validator) {
							return value != 0;
						}
					}
				}
			},
			roadwayLithology : {
				validators : {
					callback : {
						message : '请选择!',
						callback : function(value, validator) {
							return value != 0;
						}
					}
				}
			},
			roadywayCoalType : {
				validators : {
					callback : {
						message : '请选择!',
						callback : function(value, validator) {
							return value != 0;
						}
					}
				}
			},
		}
	});

});