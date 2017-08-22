package cn.zqrc.fts2.pro.action;

import java.util.Iterator;
import java.util.Set;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.Brand;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.pro.vo.User;
import cn.zqrc.fts2.tools.HqlHelper;
import cn.zqrc.fts2.tools.PageBean;

/**
 * 品牌管理
 * @author JiaQi
 *
 */
public class BrandAction extends BaseAction<Brand>{
	private Integer userId;
	private Integer brandUserId;
	
	public Integer getBrandUserId() {
		return brandUserId;
	}

	public void setBrandUserId(Integer brandUserId) {
		this.brandUserId = brandUserId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/***
	 * 跳转修改品牌信息 brank_update
	 * JiaQi
	 */
	public String toUpdateBrand(){
		Brand brand = brandService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("users", userService.findCreat());
		ActionContext.getContext().getValueStack().set("brand", brand);
		return "updateBrand";
	}
	
	/***
	 * 修改品牌信息 brank_update
	 * JiaQi
	 */
	public String updateBrand(){
		Brand brand = brandService.getById(getModel().getId());
		User user = userService.getById(brandUserId);
		brand.setUser(user);
		Set<Project> projects = brand.getProjects();
		Iterator i = projects.iterator();//先迭代出来
		while(i.hasNext()){//遍历
			Project project = (Project) i.next();
			project.setUser(user);
			projectService.update(project);
		}
		brand.setName(getModel().getName());
		brand.setInfo(getModel().getInfo());
		brandService.update(brand);
		ActionContext.getContext().getValueStack().set("brand", brand);
		ActionContext.getContext().getValueStack().set("users", userService.findCreat());
		ActionContext.getContext().getValueStack().set("msg", "*修改成功！");
		return "updateBrand";
	}
	
	/**
	 * 品牌展示项目列表
	 * 获取品牌ID查询下面项目列表
	 * JiaQi
	 */
	public String toProjectBrand(){
//		记录当前项目id
		ActionContext.getContext().getSession().put("brandId", getModel().getId());
		return projectBrand();
	}
	
	/**
	 * * 品牌展示项目列表
	 * * JiaQi
	 */
	public String projectBrand(){
		Integer id = (Integer) ActionContext.getContext().getSession().get("brandId");
//		获取品牌项目列表  分页
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.brand.id = ?", id);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "projectBrand";
	}
	
	/**
	 * 跳转添加品牌界面 add_brand
	 * JiaQi
	 */
	public String toAddBrand(){
		ActionContext.getContext().getValueStack().set("users", userService.findCreat());
		return "addBrand";
	}
	
	/**
	 * 添加品牌信息
	 * JiaQi
	 */
	public String addBrand(){
		
		Brand brand = new Brand();
		brand.setName(getModel().getName());
		brand.setInfo(getModel().getInfo());
		brand.setUser(getAdmins());
		brand.setProjectNum(0);
		User user = userService.getById(userId);
		brand.setUser(user);
		brand.setCreatuser(getAdmins());
		brandService.save(brand);
		ActionContext.getContext().getValueStack().set("msg", "*添加成功！");
		return "toaddBrand";
	}
}
