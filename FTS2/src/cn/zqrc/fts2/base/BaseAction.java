package cn.zqrc.fts2.base;

import java.lang.reflect.ParameterizedType;
import java.net.InetAddress;
import java.util.List;

import javax.annotation.Resource;

import cn.zqrc.fts2.pro.service.BidService;
import cn.zqrc.fts2.pro.service.BrandService;
import cn.zqrc.fts2.pro.service.BrankService;
import cn.zqrc.fts2.pro.service.BusinesService;
import cn.zqrc.fts2.pro.service.ClearService;
import cn.zqrc.fts2.pro.service.InspService;
import cn.zqrc.fts2.pro.service.InsuService;
import cn.zqrc.fts2.pro.service.LogisService;
import cn.zqrc.fts2.pro.service.MessageService;
import cn.zqrc.fts2.pro.service.ProjectService;
import cn.zqrc.fts2.pro.service.UserService;
import cn.zqrc.fts2.pro.service.impl.SuppliersService;
import cn.zqrc.fts2.pro.vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	protected T model;
	public BaseAction(){
		try{
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			model = clazz.newInstance();
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	protected int pageNum = 1;

	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	//获取模型驱动
	public T getModel(){
		return model;
	}
	
//	获取IP
	public void getIP(){
		 InetAddress addr;
			try {
				addr = InetAddress.getLocalHost();
		ActionContext.getContext().getSession().put("ip", "http://"+addr.getHostAddress().toString()+":8080/FTS2/upload/");
			}catch (Exception e) {
				System.out.println("防止IP失败！");
			}
	}
	
//	全局变量用以接收用户信息
	protected User getAdmins() {
		return (User)ActionContext.getContext().getSession().get("admins");
	}
	protected void setAdmins(User admins) {
		ActionContext.getContext().getSession().put("admins", admins);
	}
	
//	注入service
	@Resource
	protected UserService userService;
	@Resource
	protected ProjectService projectService;
	@Resource
	protected BrandService brandService;
	@Resource
	protected BidService bidService;
	@Resource
	protected BrankService brankService;
	@Resource
	protected BusinesService businesService;
	@Resource
	protected ClearService clearService;
	@Resource
	protected InspService inspService;
	@Resource
	protected InsuService insuService;
	@Resource
	protected LogisService logisService;
	@Resource
	protected SuppliersService suppliersService;
	@Resource
	protected MessageService messageService;
}