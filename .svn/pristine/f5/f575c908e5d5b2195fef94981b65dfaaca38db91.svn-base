package com.zhg.javakc.modules.system.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.system.role.service.RoleService;
import com.zhg.javakc.modules.system.user.entity.UserEntity;
import com.zhg.javakc.modules.system.user.service.UserService;

/**
 * 基础用户信息表现层实现
 * @author zhg
 * @version v0.1
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	/**
	 * 根据条件分页查询
	 * @param entity 查询条件
	 * @param model	 页面传参对象
	 * @param request 请求
	 * @param response 响应
	 * @return			展示数据列表页面
	 * @throws Exception 抛出异常
	 */
	@RequiresPermissions("user:query")
	@RequestMapping(value="/query")
	public String query(UserEntity entity, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		StringBuffer hql = new StringBuffer("FROM UserEntity WHERE 1=1 ");
		if(null != entity.getUserName()){
			hql.append(" AND userName LIKE :userName");
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("userName", "%"+entity.getUserName()+"%");
		model.put("page", userService.queryPageByCondition(hql.toString(), data, new Page<UserEntity>(request, response)));
		model.put("entity", entity);
		return "system/user/list";
	}
	
	/**
	 * 添加方法
	 * @param entity 实体对象
	 * @return
	 */
	@RequestMapping(value="/add")
	public String add(ModelMap model)
	{
		String hql = "FROM RoleEntity WHERE 1=1 ";
		model.put("roleSet", roleService.queryAll(hql));
		return "system/user/create";
	}
	
	/**
	 * 添加方法
	 * @param entity 实体对象
	 * @return
	 */
	@RequiresPermissions("user:create")
	@RequestMapping(value="/create")
	public String create(UserEntity entity, String[] roleIds)
	{
		userService.save(entity, roleIds);
		return "redirect:/user/query.do";
	}
	
	/**
	 * 跳转到修改展示页面
	 * @param ids 当前对象主键ID
	 * @param model 页面传递参数对象
	 * @return
	 */
	@RequestMapping(value="/view")
	public String view(String ids, ModelMap model)
	{
		model.put("entity", userService.get(UserEntity.class, ids));
		model.put("roleSet", roleService.queryAll(" FROM RoleEntity R"));
		return "system/user/update";
	}
	
	/**
	 * 修改方法
	 * @param entity 修改的实体类
	 * @return
	 */
	@RequiresPermissions("user:update")
	@RequestMapping(value="/update")
	public String update(UserEntity entity, String[] roleIds)
	{
		userService.update(entity, roleIds);
		return "redirect:/user/query.do";
	}

	/**
	 * 批量删除对象
	 * @param ids 批量主键ID数组
	 * @return
	 */
	@RequiresPermissions("user:delete")
	@RequestMapping(value="/delete")
	public String delete(String[] ids)
	{
		userService.delete(UserEntity.class, ids);
		return "redirect:/user/query.do";
	}
	
}
