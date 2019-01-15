package com.zhg.javakc.modules.system.menu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.impl.BaseServiceImpl;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.system.menu.dao.MenuDao;
import com.zhg.javakc.modules.system.menu.entity.MenuEntity;
import com.zhg.javakc.modules.system.menu.service.MenuService;

/**
 * 基础用户信息模块逻辑层实现
 * @author zhou
 * @version 0.1
 */
@Service("menuService")
public class MenuServiceImpl extends BaseServiceImpl<MenuEntity> implements MenuService {
	
	@Autowired
	private MenuDao menuDao;
	
	public Page<MenuEntity> findMenu(Page<MenuEntity> page, MenuEntity entity) {
		// 执行分页查询
//		page.setList(menuDao.findList(entity));
		return page;
	}
	
	/**
	 * 保存数据（插入）
	 * @param entity
	 */
	@Transactional(readOnly = false)
	public void save(MenuEntity entity) {
		entity.setMenuId( CommonUtil.uuid() );
//		dao.insert(entity);
	}
	
	/**
	 * 主页初始化数据
	 * @return
	 */
	public List<Map<String, Object>> findList(String sql)
	{
		return menuDao.findAll(sql);
	}
	
}
