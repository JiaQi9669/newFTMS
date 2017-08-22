package cn.zqrc.fts2.pro.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.service.BrandService;
import cn.zqrc.fts2.pro.vo.Brand;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.pro.vo.User;
import cn.zqrc.fts2.tools.HqlHelper;
import cn.zqrc.fts2.tools.PageBean;

/**
 * 右侧导航栏跳转
 * @author JiaQi
 *
 */
public class BarAction extends BaseAction<Project>{
	
	/**
	 * 退出登录
	 * 销毁session
	 * 跳转login.jsp
	 * JiaQi
	 */
	public String outLogin(){
//		清空session
		ActionContext.getContext().getSession().clear();
		return "login";
	}
	
	/**
	 * 跳转至主界面 mian.jsp
	 * JiaQi
	 */
	public String toMain(){
		return "main";
	}
	
	/**
	 * 欢迎界面
	 */
	public String toWelcome(){
		return "welcome";
	}
	
	
	/**
	 *  员工管理
	 *  显示出所有员工信息
	 *  跳转到员工管理界面   staffSetting
	 *  JiaQi
	 */
	public String staffSetting(){
//		获取所有用户 分页
		HqlHelper helper=new HqlHelper(User.class, "u").addOrderByProperty("id", false);
		PageBean pageBean =userService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "staffSetting";
	}
	
	/**
	 * 我的项目
	 * 查询我参与的项目  
	 * 跳转到 project_my
	 * JiaQi
	 */
	public String toProjectMy(){
//		通过id获取参与项目
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.user.id = ? or p.creatUser = "+getAdmins().getId()+"", getAdmins().getId());
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "project_my";
	}
	
	/**
	 * 我的项目
	 * 查询我参与的项目  
	 * 跳转到 project_my
	 * JiaQi
	 */
	public String toCreatProjectMy(){
//		通过id获取参与项目
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.user.id = ?", getAdmins().getId());
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "project_my_creat";
	}
	/**
	 * 品牌管理
	 * 查询所有品牌
	 * 跳转到brand.jsp
	 */
	public String toBrand(){
//		通过id获取管理品牌
		HqlHelper helper=new HqlHelper(Brand.class, "b").addOrderByProperty("id", false).addWhereCondition("b.creatuser.id = ?", getAdmins().getId());
		PageBean pageBean =brandService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "Brand";
	}
	
	/**
	 * 完结项目
	 * 查询自己已完结项目
	 * 跳转priject_over.jsp
	 * JiaQi
	 */
	public String toProjectOver(){
//		通过id获取参与项目
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.user.id = ? and p.isOver = '2'", getAdmins().getId());
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "project_over";
	}
	
	/**
	 * 招投标跳转到招投标-在执行
	 * 查询自己在执行 招投标 项目 project_biding
	 * JiaQi
	 */
	public String toBiding(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 1);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "biding";
	}
	
	/**
	 * 招投标跳转到招投标-weizhixing
	 * 查询自己在执行 招投标 项目 project_bid_over
	 * JiaQi
	 */
	public String toBidOver(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 2);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "bidOver";
	}
	
	/**
	 * 银行跳转到银行-在执行
	 * 查询自己在执行 银行 项目 Bar_toBranding
	 * guo
	 */
	public String toBranking(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?",1);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "branking";
	}
	
	/**
	 * 银行跳转到银行-已完结
	 * 查询自己在执行已完结 银行 项目 Bar_toBrandOver
	 * guo
	 */
	public String toBrankOver(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 2);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "brankOver";
	}
	
	/**
	 * 许可证跳转到许可证-在执行
	 * 查询自己在执行 许可证 项目 Bar_toLicenseing
	 * guo
	 */
	public String toBusinesing(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?",1);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "businesing";
	}
	
	/**
	 * 许可证跳转到许可证-已完结
	 * 查询自己在执行已完结 许可证 项目 Bar_toLicenseOver
	 * guo
	 */
	public String toBusinesOver(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 2);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "businesOver";
	}
	
	/**
	 * 清关跳转到清关-在执行
	 * 查询自己在执行 清关 项目 Bar_toClearOver
	 * guo
	 */
	public String toClearing(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 1);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "clearing";
	}
	
	/**
	 * 清关跳转到清关-已完结
	 * 查询自己在执行已完结 清关 项目 Bar_toClearOver
	 * guo
	 */
	public String toClearOver(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 2);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "clearOver";
	}
	
	/**
	 * 商检跳转到商检-在执行
	 * 查询自己在执行 商检 项目 Bar_toBusinesing
	 * guo
	 */
	public String toInsping(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 1);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "insping";
	}
	
	/**
	 * 商检跳转到商检-已完结
	 * 查询自己在执行已完结 商检 项目 Bar_toBusinesOver
	 * guo
	 */
	public String toInspOver(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 2);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "inspOver";
	}
	
	/**
	 * 保险跳转到保险-在执行
	 * 查询自己在执行 保险 项目 Bar_toInsping
	 * guo
	 */
	public String toInsuing(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 1);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "insuing";
	}
	
	/**
	 * 保险跳转到保险-已完结
	 * 查询自己在执行已完结 保险 项目 Bar_toInspOver
	 * guo
	 */
	public String toInsuOver(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 2);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "insuOver";
	}

	
	/**
	 * 物流跳转到物流-在执行
	 * 查询自己在执行 物流 项目 Bar_toLogising
	 * guo
	 */
	public String toLogising(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 1);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "logising";
	}
	
	/**
	 * 物流跳转到物流-已完结
	 * 查询自己在执行已完结 物流 项目 Bar_toLogisOver
	 * guo
	 */
	public String toLogisOver(){
		HqlHelper helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
				.addWhereCondition("p.isOver = ?", 2);
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "logisOver";
	}
	
	/**
	 * 高级查询跳转到查询页面
	 * 查询自己在执行已完结 物流 项目 Bar_search
	 * guo
	 */
	public String search(){
		return "search";
	}


	/**
	 * 查询到的结果展示
	 * 查询自己在执行已完结 物流 项目 Bar_searchView
	 * guo
	 */
	public String searchView(){
		//		<option value="0">内部编号</option>inNum
		//		<option value="1">外贸合同号</option>outNum
		//		<option value="2">最终用户</option>finalUser
		//		<option value="3">品名</option>productName
		//		<option value="4">代理商</option>agentMoney

		//		<option value="5">海关编码</option>clear.portNum
		//		<option value="6">报关年度</option>clear.portDate
		HqlHelper helper;
		if(search.equals("0")){
			helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
					.addWhereCondition("p.inNum like ?", "%"+testValue+"%");
			//			List<Project> findProject =projectService.findProject("inNum",testValue);
		}else if(search.equals("1")){

			helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
					.addWhereCondition("p.outNum like ?", "%"+testValue+"%");
			//			List<Project> findProject =projectService.findProject("outNum",value);

		}else if(search.equals("2")){
			helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
					.addWhereCondition("p.finalUser like ?", "%"+testValue+"%");
			//			List<Project> findProject =projectService.findProject("finalUser",value);

		}else if(search.equals("3")){
			helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
					.addWhereCondition("p.productName like ?", "%"+testValue+"%");
			//			List<Project> findProject =projectService.findProject("productName",value);

		}else if(search.equals("4")){
			helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
					.addWhereCondition("p.agentMoney like ?", "%"+testValue+"%");
			//			List<Project> findProject = projectService.findProject("agentMoney",value);

		}else if(search.equals("5")){
			helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
					.addWhereCondition("p.clear.portNum like ?", "%"+testValue+"%");
			//				List<Project> findProject = projectService.findProject("agentMoney",value);
		}else{
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
			Date date = null;
			try {
				date =sdf.parse(testValue);
				System.out.println(date.toString());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			输入的日期大于4位 正常处理 否则查询今年
			if(testValue.length()>3){
				testValue = testValue.substring(0, 4);
				System.out.println(testValue);
				//			DateUtil.StringToDate(start, end, startDate, endDate);
				helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
						.addWhereCondition("p.clear.portDate > ?", date);
				//					List<Project> findProject = projectService.findProject("agentMoney",value);
			}else{
//				查询今年的数据
				helper=new HqlHelper(Project.class, "p").addOrderByProperty("id", false)
						.addWhereCondition("p.clear.portDate > ?", date);
			}
		}
		PageBean pageBean =projectService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "searchView";
	}

	private String search;
	private String testValue;

	public String getTestValue() {
		return testValue;
	}

	public void setTestValue(String testValue) {
		this.testValue = testValue;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

}