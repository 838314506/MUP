package com.zhg.javakc.modules.system.user.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.system.user.entity.UserEntity;

public interface UserService extends BaseService<UserEntity>{

	/**
	 * 分页查询符合条件用户信息
	 * @param page
	 * @param entity
	 * @return
	 */
	public Page<UserEntity> findUser(Page<UserEntity> page, UserEntity entity);
	
	/**
	 * 添加用户, 绑定角色信息
	 * @param entity
	 * @param roleIds
	 */
	public void save(UserEntity entity, String[] roleIds);
	
	/**
	 * 修改用户, 绑定角色信息
	 * @param entity
	 * @param roleIds
	 */
	public void update(UserEntity entity, String[] roleIds);
	
	/**
	 * 删除用户及相关信息
	 */
	public void delete(String[] id);
	
	/**
	 * 查询用户密码
	 * @param loginName
	 * @return
	 */
	public String login(String loginName);
	
	/**
	 * 根据登陆名称获取登陆人相关信息
	 * @param loginName
	 * @return
	 */
	public UserEntity findByName(String loginName);
	
	
}
