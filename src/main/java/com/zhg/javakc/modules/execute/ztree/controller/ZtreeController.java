package com.zhg.javakc.modules.execute.ztree.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhg.javakc.modules.execute.ztree.entity.ZtreeEntity;
import com.zhg.javakc.modules.execute.ztree.service.ZtreeService;

@Controller
@RequestMapping(value = "/ztree")
public class ZtreeController {

	@Autowired
	private ZtreeService ztreeService;

	@RequestMapping(value = "/query")
	@ResponseBody
	public List<Map<String, Object>> query(String id) {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		String hql = " from ZtreeEntity where 1=1 ";

		List<ZtreeEntity> ztreelist = ztreeService.queryAll(hql);
		// 判断主键id是否为空，进行查询结果集进行逻辑修改
		if (id != null) {
			List<String> list2 = list(ztreelist, id);
			for (String string : list2) {
				for (ZtreeEntity ztree : ztreelist) {
					if (ztree.getId().equals(string)) {
						ztree.setOpen("true");
					}
				}
			}
		}

		for (ZtreeEntity z : ztreelist) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", z.getId());
			map.put("name", z.getName());
			map.put("pId", z.getPid());
			map.put("open", z.getOpen());
			map.put("t", z.getType());

			list.add(map);
		}
//		ztreelist.forEach(e -> {
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("id", e.getId());
//			map.put("name", e.getName());
//			map.put("pId", e.getPid());
//			map.put("open", e.getOpen());
//			map.put("t", e.getType());
//
//			list.add(map);
//		});

		return list;
	}

	public static void ztreeSave(String zhujianid, String weijianid, String name, String entityname, ZtreeService zs) {

		ZtreeEntity obj = new ZtreeEntity();
		obj.setId(zhujianid);
		obj.setPid(weijianid);
		obj.setName(name);
		obj.setType(entityname);
		obj.setOpen("false");
		zs.create(obj);
	}

	public void ztreeDelete(String id) {
		String ids[] = { id };
		ztreeService.delete(ZtreeEntity.class, ids);
	}

	// 改变数是否打开的，让树回显
	public static List<String> list(List<ZtreeEntity> list, String id) {
		int size = list.size();
		List<String> as = new ArrayList<>();
		for (int i = 0; i < size; i++) {

			ZtreeEntity entity = list.get(i);
			if (entity.getId().equals(id)) {

				as.add(entity.getId());
				if (entity.getPid() != null) {

					id = entity.getPid();
					i = -1;
				}
			}
		}
		return as;
	}

}
