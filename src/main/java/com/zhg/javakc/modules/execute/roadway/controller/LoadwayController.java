package com.zhg.javakc.modules.execute.roadway.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zhg.javakc.modules.execute.roadway.entity.RoadwayEntity;
import com.zhg.javakc.modules.execute.roadway.service.RoadWayService;

@Controller
@RequestMapping("roadway")
public class LoadwayController {
//	矿井巷道操作
	@Resource
	private RoadWayService service;

	/**
	 * 查询方法
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("query")
	public ModelAndView query(ModelAndView view, String ztreeid) {
		view.addObject("roadwayEntity", service.load(RoadwayEntity.class, ztreeid));
		view.setViewName("execute/roadway/myself");
		return view;
	}

	/**
	 * 根据id查询
	 */
	@RequestMapping("look")
	public String look(String ids, ModelMap model) throws Exception {
		model.put("roadwayEntity", service.get(RoadwayEntity.class, ids));
		return "execute/roadway/look";
	}
}
