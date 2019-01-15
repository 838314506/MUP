package com.zhg.javakc.modules.execute.worksurface.controller;

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
import com.zhg.javakc.modules.execute.mining.entity.MiningEntity;
import com.zhg.javakc.modules.execute.worksurface.entity.SurfaceEntity;
import com.zhg.javakc.modules.execute.worksurface.service.SurfaceService;
import com.zhg.javakc.modules.execute.ztree.entity.ZtreeEntity;
import com.zhg.javakc.modules.execute.ztree.service.ZtreeService;

/**
 * 工作面controller
 * 
 * @author Acer
 *
 */
@Controller
@RequestMapping("/surface")
public class SurfaceController {
	@Autowired
	private SurfaceService surfaceService;
	
	@Autowired
	private ZtreeService ztreeService;

	// 查询所有
	@RequestMapping("/query")
	public ModelAndView queryAll(SurfaceEntity entity, MiningEntity mining,
			HttpServletRequest request, HttpServletResponse response,
			String ztreeid) {
		// 数据与页面
		ModelAndView modelAndView = new ModelAndView();
		// 拼写查询hql
		String hql = "FROM SurfaceEntity s where 1 = 1 ";
		Map<String, Object> data = new HashMap<String, Object>();
		if (null != ztreeid && !"".equals(ztreeid)) {
			mining.setMiningId(ztreeid);
		} else {
			mining.setMiningId("4028808b64ff24930164ff2d1f0f0002");
		}
		if (null != mining.getMiningId()) {
			hql += " and s.miningEntity= :miningEntity  ";
			data.put("miningEntity", mining);
		}
		// 执行查询

		Page<SurfaceEntity> page = surfaceService.queryPageByCondition(hql,
				data, new Page<SurfaceEntity>(request, response));
		modelAndView.addObject("page", page);
		modelAndView.addObject("mining",surfaceService.get(MiningEntity.class, ztreeid));
		// 获取采区信息
		modelAndView.setViewName("execute/workSurface/list");
		return modelAndView;
	}

	// 新增
	@RequestMapping("/create")
	public String create(SurfaceEntity entity, MiningEntity miningEntity) {
		entity.setMiningEntity(miningEntity);
		surfaceService.create(entity);
		
		//新增树的节点
		ZtreeEntity obj = new ZtreeEntity();
		obj.setId(entity.getWorkId());
		obj.setPid(miningEntity.getMiningId());
		obj.setName(entity.getWorkName());
		obj.setType("SurfaceEntity");
		obj.setOpen("false");
		ztreeService.create(obj);
		return "redirect:query.do?ztreeid=" + miningEntity.getMiningId();

	}
	// 修改—装载
	@RequestMapping("/load")
	public String load(String ids, ModelMap map) {
		map.addAttribute("entity",
				surfaceService.load(SurfaceEntity.class, ids));
		return "execute/workSurface/update";
	}
	// 修改
	@RequestMapping("/update")
	public String update(SurfaceEntity entity) {
		surfaceService.update(entity);
		return "redirect:query.do?ztreeid=" + entity.getMiningEntity().getMiningId();
	}

	// 删除
	@RequestMapping("/delete")
	public String delete(String[] ids) {
		SurfaceEntity entity = surfaceService.get(SurfaceEntity.class, ids[0]);
		surfaceService.delete(SurfaceEntity.class, ids);
		//删除树
		ztreeService.delete(ZtreeEntity.class,ids);
		return "redirect:query.do?ztreeid=" + entity.getMiningEntity().getMiningId();
	}
	// 状态更改
	@RequestMapping("/status")
	public String status(String ids) {
		SurfaceEntity surfaceEntity = surfaceService.get(SurfaceEntity.class,
				ids);
		if (surfaceEntity.getWorkStatus() == 0) {
			surfaceEntity.setWorkStatus(1);
		} else if (surfaceEntity.getWorkStatus() == 1) {
			surfaceEntity.setWorkStatus(0);
		}
		surfaceService.update(surfaceEntity);
		return "redirect:query.do?ztreeid=" + surfaceEntity.getMiningEntity().getMiningId();
	}
	// 查看
	@RequestMapping("/select")
	public String select(String ids, ModelMap map) {
		map.addAttribute("entity",
				surfaceService.load(SurfaceEntity.class, ids));
		return "execute/workSurface/show";
	}

}
