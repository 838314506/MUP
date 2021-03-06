package com.zhg.javakc.modules.system.menu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhg.javakc.modules.system.menu.entity.MenuEntity;
import com.zhg.javakc.modules.system.menu.service.impl.MenuServiceImpl;

/**
 * 基础菜单信息表现层实现
 * @author zhg
 * @version v0.1
 */
@Controller
@RequestMapping(value = "/menu")
public class MenuController {
	
	@Autowired
	private MenuServiceImpl menuService;
	
	/**
	 * 查询所有菜单
	 * @param entity 查询条件
	 * @param model	 页面传参对象
	 * @return			展示数据列表页面
	 * @throws Exception 抛出异常
	 */
	@RequiresPermissions("menu:query")
	@RequestMapping(value="/query")
	public String query(MenuEntity entity, ModelMap model) throws Exception {
		StringBuffer hql = new StringBuffer("FROM MenuEntity M ORDER BY M.menuWeight");
		if(null != entity.getMenuName()){
			hql.append(" AND menuName LIKE :menuName");
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("menuName", "%"+entity.getMenuName()+"%");
		model.put("page", menuService.queryByCondition(hql.toString(), data));
		return "system/menu/list";
	}
	
	/**
	 * 添加页面查询所有菜单
	 * @param entity 查询条件
	 * @param model	 页面传参对象
	 * @return			展示数据列表页面
	 * @throws Exception 抛出异常
	 */
	@RequestMapping(value="/createParent")
	public String createParent(MenuEntity entity, ModelMap model) throws Exception
	{
		String hql = "FROM MenuEntity M ORDER BY M.menuWeight ";
		model.put("page", menuService.queryAll(hql));
		return "system/menu/create-parent";
	}
	
	/**
	 * 添加方法
	 * @param entity 实体对象
	 * @return
	 */
	@RequiresPermissions("menu:create")
	@RequestMapping(value="/create")
	public String create(MenuEntity entity) {
		menuService.create(entity);
		return "redirect:/menu/query.do";
	}
	
	/**
	 * 跳转到修改展示页面
	 * @param ids 当前对象主键ID
	 * @param model 页面传递参数对象
	 * @return
	 */
	@RequestMapping(value="/view")
	public String view(String ids, ModelMap model) {
		model.put("entity", menuService.get(MenuEntity.class, ids));
		return "system/menu/update";
	}
	
	/**
	 * 修改方法
	 * @param entity 修改的实体类
	 * @return
	 */
	@RequiresPermissions("menu:update")
	@RequestMapping(value="/update")
	public String update(MenuEntity entity) {
		menuService.update(entity);
		return "redirect:/menu/query.do";
	}
	
	/**
	 * 批量删除对象
	 * @param ids 批量主键ID数组
	 * @return
	 */
	@RequiresPermissions("menu:delete")
	@RequestMapping(value="/delete")
	public String delete(String[] ids) {
		menuService.delete(MenuEntity.class, ids);
		return "redirect:/menu/query.do";
	}
	
}
