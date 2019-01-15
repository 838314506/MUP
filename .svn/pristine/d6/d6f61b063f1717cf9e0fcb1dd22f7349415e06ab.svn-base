package com.zhg.javakc.modules.manage.coal.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.manage.coal.entity.ManageEntity;
import com.zhg.javakc.modules.manage.coal.service.ManageService;

@Controller
@RequestMapping("/manage")
public class ManageController {
	@Autowired
	private ManageService manageService;

	@RequestMapping("/query")
	public ModelAndView queryAll(ManageEntity manageEntity,
			HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		String hql = "from ManageEntity where 1=1";
		Map<String, Object> data = new HashMap<String, Object>();
		Page<ManageEntity> page = manageService.queryPageByCondition(hql, data,
				new Page());
		modelAndView.addObject("page", page);
		modelAndView.addObject("manageEntity", manageEntity);
		modelAndView.setViewName("manage/list");

		return modelAndView;

	}
	@RequestMapping("/view")
	public String view (String ids,ModelMap modelMap) {
		modelMap.addAttribute("entity",manageService.get(ManageEntity.class, ids));
		return "manage/update";
	}
	@RequestMapping("/create")
	public String create(ManageEntity manageEntity) {
		manageService.create(manageEntity);
		return "redirect:query.do";
	}
	@RequestMapping("/update")
	public String update(ManageEntity manageEntity) {
		manageService.update(manageEntity);
		return "redirect:query.do";
	}
}
