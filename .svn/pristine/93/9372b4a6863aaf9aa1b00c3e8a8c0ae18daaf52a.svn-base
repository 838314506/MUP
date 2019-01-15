package com.zhg.javakc.modules.system.user.service.impl;

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
import com.zhg.javakc.modules.system.role.entity.RoleEntity;
import com.zhg.javakc.modules.system.user.dao.impl.UserDaoImpl;
import com.zhg.javakc.modules.system.user.entity.UserEntity;
import com.zhg.javakc.modules.system.user.service.UserService;

/**
 * 基础用户信息模块逻辑层实现
 * @author zhou
 * @version 0.1
 */
@Service
public class UserServiceImpl extends BaseServiceImpl<UserEntity> implements UserService {
	
	@Autowired
	private UserDaoImpl userDao;
	
	/**
	 * 分页查询符合条件用户信息
	 * @param page
	 * @param entity
	 * @return
	 */
	public Page<UserEntity> findUser(Page<UserEntity> page, UserEntity entity) {
		// 设置分页参数
		entity.setPage(page);
		// 执行分页查询
//		page.setList(userDao.findList(entity));
		return page;
	}
	
	/**
	 * 添加用户, 绑定角色信息
	 * @param entity
	 * @param roleIds
	 */
	@Transactional(readOnly = false)
	public void save(UserEntity entity, String[] roleIds) {
		Set<RoleEntity> roleSet = new HashSet<RoleEntity>();
		for(String roleId:roleIds) {
			RoleEntity roleEntity = new RoleEntity();
			roleEntity.setRoleId(roleId);
			roleSet.add(roleEntity);
		}
		entity.setRoleSet(roleSet);
		userDao.create(entity);
	}
	
	/**
	 * 修改用户, 绑定角色信息
	 * @param entity
	 * @param roleIds
	 */
	@Transactional(readOnly = false)
	public void update(UserEntity entity, String[] roleIds) {
		Set<RoleEntity> roleSet = new HashSet<RoleEntity>();
		if(null != roleIds && !"".equals(roleIds)) {
			for(String roleId:roleIds) {
				RoleEntity roleEntity = new RoleEntity();
				roleEntity.setRoleId(roleId);
				roleSet.add(roleEntity);
			}
			entity.setRoleSet(roleSet);
		}
		userDao.update(entity);
	}
	
	/**
	 * 删除用户及相关信息
	 */
	@Transactional(readOnly = false)
	public void delete(String[] id) {
		for(String userId: id)
		{
			userDao.deleteRelation(userId);
		}
	}
	
	/**
	 * 查询用户密码
	 * @param loginName
	 * @return
	 */
	public String login(String loginName)
	{
		return userDao.login(loginName);
	}
	
	/**
	 * 根据登陆名称获取登陆人相关信息
	 * @param loginName
	 * @return
	 */
	public UserEntity findByName(String loginName)
	{
		return userDao.findByName(loginName);
	}
	
	
}
