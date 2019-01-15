package com.zhg.javakc.base.util.listener;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.zhg.javakc.modules.dictionary.entity.DictionaryEntity;
import com.zhg.javakc.modules.dictionary.service.DictionaryService;
import com.zhg.javakc.modules.dictionary.service.impl.DictionaryServiceImpl;
import com.zhg.javakc.modules.system.menu.service.MenuService;
import com.zhg.javakc.modules.system.menu.service.impl.MenuServiceImpl;

/**
 * 数据字典监听器
 * @author zhou
 * @version v0.1
 */
public class DictionaryListener implements ServletContextListener{
	
	private DictionaryService dictionaryService;
	private MenuService menuService;
	Logger log = Logger.getLogger(this.getClass());
	
	/**
	 * 初始化数据到缓存中
	 */
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(sce.getServletContext());
		/**
		 * 初始化数据字典数据
		 */
		dictionaryService = wac.getBean("dictionaryService", DictionaryServiceImpl.class);
		List<DictionaryEntity> dictionaryList = dictionaryService.queryAll(" FROM DictionaryEntity WHERE 1=1 ");
		sce.getServletContext().setAttribute("tagData", getCodeMap(dictionaryList));
		log.info("数据字典初始化完成!");
		
		/**
		 * 初始化主页菜单数据
		 */
		menuService = wac.getBean("menuService", MenuServiceImpl.class);
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT RM.ROLE_ID, M.MENU_NAME, M.MENU_PID, M.MENU_LEVEL, M.MENU_URI ");
		sb.append(" FROM DATA_MENU M, DATA_ROLE_MENU RM ");
		sb.append("WHERE M.MENU_ID = RM.MENU_ID AND (M.MENU_LEVEL = 1 OR M.MENU_LEVEL = 2) ");
		sb.append(" ORDER BY  RM.ROLE_ID, M.MENU_WEIGHT ");
		List<Map<String, Object>> menuList = menuService.findList(sb.toString());
		sce.getServletContext().setAttribute("menuData", homeMenu(menuList));
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		log.info("数据字典销毁成功!");
	}
	
	public Map<Object, Object> getCodeMap(List<DictionaryEntity> list) {
		Map<Object, Object> codeMap = new HashMap<Object, Object>();
		Object codeTp = null;
		Map<Object, Object> map = null;
		
		for(DictionaryEntity entity:list)
		{
			//codeTp,codeVal,codeDesc
			if(codeTp!=null && codeTp.equals(entity.getDataType()))
			{
				map.put(entity.getDataCode(), entity.getDataVal());
			}else{
				//证明一个新的code出现了，如果map不为null，就添加到返回的map中，
				//如果map是null，则不需要添加到map中
				if(map!=null){
					//保存之前收集的map
					codeMap.put(codeTp, map);
				}
				//创建新的map用于收集以后的数据
				map = new TreeMap<Object, Object>();
				map.put(entity.getDataCode(), entity.getDataVal());
				codeTp=entity.getDataType();
			}
		}
		//收集最后一个
		codeMap.put(codeTp, map);
		log.info("\u6570\u636E\u5B57\u5178\uFF1A"+codeMap);
		return codeMap;
	}
	
	public Map<String, String> homeMenu(List<Map<String, Object>> menuList)
	{
		String roleId = "";
		StringBuffer buffer = null;
		Map<String, String> menu = new HashMap<String, String>();
		for(int i=0;i<menuList.size();i++)
		{
			String menuName = menuList.get(i).get("MENU_NAME").toString();
			String menuUri = menuList.get(i).get("MENU_URI").toString();
			String menuLevel = menuList.get(i).get("MENU_LEVEL").toString();
			//如果不相等, 第一次进来
			if(!roleId.equals(menuList.get(i).get("ROLE_ID")))
			{
				if(i!=0)
				{
					buffer.append("</ul>");
					buffer.append("</li>");
					
					menu.put(roleId, buffer.toString());
				}
				roleId = menuList.get(i).get("ROLE_ID").toString();
				buffer = new StringBuffer();
				
				if("1".equals(menuLevel))
				{
					buffer.append("<li>");
					buffer.append("<a href='#'>");
					buffer.append("<i class='fa fa-inbox'></i>");//此处是 图标
					buffer.append("<span class='nav-label'>"+menuName+"</span>");//此处是 模块名称
					buffer.append("<span class='fa arrow'></span>");//此处是 倒三角
					buffer.append("</a>");
					
					buffer.append("<ul class='nav nav-second-level'>");
				}
			}
			//如果相等, 不是第一次进来
			else
			{
				if("1".equals(menuLevel))
				{
					buffer.append("</ul>");
					buffer.append("</li>");
					
					buffer.append("<li>");
					buffer.append("<a href='#'>");
					buffer.append("<i class='fa fa-inbox'></i>");//此处是 图标
					buffer.append("<span class='nav-label'>"+menuName+"</span>");//此处是 模块名称
					buffer.append("<span class='fa arrow'></span>");//此处是 倒三角
					buffer.append("</a>");
					
					buffer.append("<ul class='nav nav-second-level'>");
				}
				if("2".equals(menuLevel))
				{
					buffer.append("<li><a class='J_menuItem' href='"+menuUri+"'>"+menuName+"</a></li>");
				}
			}
			
			if(i==menuList.size()-1)
			{
				menu.put(roleId, buffer.toString());
			}
		}
		return menu;
	}

}
