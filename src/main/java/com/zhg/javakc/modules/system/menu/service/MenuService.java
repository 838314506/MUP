package com.zhg.javakc.modules.system.menu.service;

import java.util.List;
import java.util.Map;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.system.menu.entity.MenuEntity;

public interface MenuService extends BaseService<MenuEntity> {

	public List<Map<String, Object>> findList(String sql);
	
}
