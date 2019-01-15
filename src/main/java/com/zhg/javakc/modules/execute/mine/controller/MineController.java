package com.zhg.javakc.modules.execute.mine.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.execute.mine.entity.MineEntity;
import com.zhg.javakc.modules.execute.mine.service.MineService;
import com.zhg.javakc.modules.execute.ztree.controller.ZtreeController;
import com.zhg.javakc.modules.execute.ztree.entity.ZtreeEntity;
import com.zhg.javakc.modules.execute.ztree.service.ZtreeService;
import com.zhg.javakc.modules.manage.coal.entity.ManageEntity;
/**
 * 矿井Controller
 * @author lzz
 *
 */
@Controller
@RequestMapping("/mine")
public class MineController {
	
	@Autowired
	private MineService mineService;
	@Autowired
	private ZtreeService ztreeService;
	
	/**
	 * 查询方法
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("query")
	public ModelAndView query(ManageEntity me,MineEntity entity,String ztreeid,HttpServletRequest req,HttpServletResponse resp) throws Exception
	{
		StringBuffer hql = new StringBuffer(" FROM MineEntity m where 1 = 1 ");
		ModelAndView view = new ModelAndView();
		Map<String,Object> data = new HashMap<String,Object>();
		//此处将Id写死，后期需要进行动态处理
		if(null != ztreeid && !"".equals(ztreeid)) {
			me.setmId(ztreeid);
		}else {
			me.setmId("1");
		}
		if( null != me.getmId() && !"".equals(me.getmId())) {
			hql.append(" AND m.manageEntity = :ManageEntity");
			data.put("ManageEntity", me);
		}
		view.setViewName("execute/mine/list");
		view.addObject("manageEntity", me);
		view.addObject("page", mineService.queryPageByCondition(hql.toString(), data, new Page<MineEntity>(req,resp)));
		return view;
	}
	
	/**
	 * 新增方法
	 */
	@RequestMapping("create")
	public String create(MineEntity entity) throws Exception
	{
		mineService.create(entity);
		ZtreeController.ztreeSave(entity.getMineId(), entity.getManageEntity().getmId(), entity.getMineName(), "MineEntity", ztreeService);
		return "redirect:query.do";
	}
	
	/**
	 * 修改查询方法
	 */
	@RequestMapping("/view/{type}")
	public String load(@PathVariable("type") String type,String ids,ModelMap model,HttpServletRequest req) throws Exception
	{
		MineEntity entity = mineService.get(MineEntity.class, ids);
		model.put("entity", entity);
		return resolution(type,entity,model);
	}
	
	/**
	 * 修改方法
	 */
	@RequestMapping("update")
	public String update(MineEntity entity) throws Exception
	{
		mineService.update(entity);
		return "redirect:query.do";
	}
	
	/**
	 * 删除方法
	 */
	@RequestMapping("delete")
	public String delete(String[] ids) throws Exception
	{
		mineService.delete(MineEntity.class,ids);
		//删除的同时，删除ztree中的数据
		ZtreeEntity obj = new ZtreeEntity();
		obj.setId(ids[0]);
		ztreeService.delete(obj);
		
		return "redirect:query.do";
	}
	
	
	/**
	 * 
	 * 处理load方法的类型返回对应的响应内容
	 */
	public String resolution(String type,MineEntity entity,ModelMap model)
	{
		//如果类型不满足以上条件，那么类型为1，表示要对当前矿井信息进行修改
		if( type.equals("1") ) 
		{
			return "execute/mine/update";
		}
		else if( type.equals("3") ) 
		{
			//如果类型是3，表示要对当前矿井的状态进行修改，修改完后直接重定向到查询
			Integer status = entity.getMineStatus();
			ManageEntity me = entity.getManageEntity();
			if( status == 1 ) 
			{
				entity.setMineStatus(0);
				mineService.update(entity);
				model.put("entity", me);
				return "forward:/mine/query.do";
			}
			else 
			{
				entity.setMineStatus(1);
				mineService.update(entity);
				model.put("entity", me);
				return "forward:/mine/query.do";
			}
		}
		else 
		{
			//如果类型是2，表示要进行当前矿井信息的查看
			return "execute/mine/show";
		}
	}
}
