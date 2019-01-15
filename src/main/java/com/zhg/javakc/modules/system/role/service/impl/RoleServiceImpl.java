package com.zhg.javakc.modules.system.role.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.impl.BaseServiceImpl;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.system.menu.entity.MenuEntity;
import com.zhg.javakc.modules.system.role.dao.RoleDao;
import com.zhg.javakc.modules.system.role.entity.RoleEntity;
import com.zhg.javakc.modules.system.role.service.RoleService;

/**
 * 基础信息角色模块逻辑层实现
 * @author zhou
 * @version 0.1
 */
@Service("roleService")
public class RoleServiceImpl extends BaseServiceImpl<RoleEntity> implements RoleService {
	
	@Autowired
	private RoleDao roleDao;
	
	public Page<RoleEntity> findRole(Page<RoleEntity> page, RoleEntity entity) {
		// 设置分页参数
		entity.setPage(page);
		// 执行分页查询
//		page.setList(roleDao.findList(entity));
		return page;
	}
	
	@Transactional(readOnly = false)
	public void save(RoleEntity entity, String[] ids) {
		String roleId = CommonUtil.uuid();
		entity.setRoleId( roleId );
		Set<MenuEntity> menuSet = new HashSet<MenuEntity>();
		for(String menuId:ids) {
			MenuEntity menuEntity = new MenuEntity();
			menuEntity.setMenuId(menuId);
			menuSet.add(menuEntity);
		}
		entity.setMenuSet(menuSet);
		roleDao.create(entity);
	}
	
	@Transactional(readOnly = false)
	public void update(RoleEntity entity, String[] ids) {
		Set<MenuEntity> menuSet = new HashSet<MenuEntity>();
		if(null !=ids && !"".equals(ids)) {
			for(String menuId:ids) {
				MenuEntity menuEntity = new MenuEntity();
				menuEntity.setMenuId(menuId);
				menuSet.add(menuEntity);
			}
			entity.setMenuSet(menuSet);
		}
		roleDao.update(entity);
	}
	
	@Transactional(readOnly = false)
	public void delete(String[] id) {
		for(String roleId: id) {
			roleDao.deleteRelation(roleId);
		}
	}
	
}
