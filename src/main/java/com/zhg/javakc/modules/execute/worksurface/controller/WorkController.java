package com.zhg.javakc.modules.execute.worksurface.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhg.javakc.modules.execute.roadway.entity.RoadwayEntity;
import com.zhg.javakc.modules.execute.roadway.service.RoadWayService;
import com.zhg.javakc.modules.execute.worksurface.entity.SurfaceEntity;
import com.zhg.javakc.modules.execute.worksurface.service.SurfaceService;

@Controller
@RequestMapping("/work")
public class WorkController {
	@Autowired
	private SurfaceService surfaceService;
	@Resource
	private RoadWayService service;
	
	@RequestMapping("/query")
	public String query(String ztreeid,ModelMap model) throws Exception
	{
		
		model.put("entity", surfaceService.get(SurfaceEntity.class, ztreeid));
		return "execute/workSurface/selfShow";
	}
	
	/**
	 * 根据id查询
	 */
	@RequestMapping("look")
	public String look(String id1, ModelMap model) throws Exception {
		model.put("roadwayEntity", service.get(RoadwayEntity.class, id1));
		return "execute/roadway/look";
	}
	
	/**
	 * 状态修改
	 * 
	 * @param ids
	 * @return 
	 * @throws Exception
	 */
	@RequestMapping("state")
	public String state(String id1,String ztreeid) throws Exception {
		RoadwayEntity roadwayEntity = service.load(RoadwayEntity.class, id1);
		if (roadwayEntity.getRoadywayStatus() == 1) {
			roadwayEntity.setRoadywayStatus(0);
			service.update(roadwayEntity);
		} else {
			roadwayEntity.setRoadywayStatus(1);
			service.update(roadwayEntity);
		}
		System.out.println(ztreeid);
		return "redirect:query.do?ztreeid=" + ztreeid;
	}
}
