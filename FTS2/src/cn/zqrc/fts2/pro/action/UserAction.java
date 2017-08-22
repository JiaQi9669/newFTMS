package cn.zqrc.fts2.pro.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.User;
import cn.zqrc.fts2.tools.HqlHelper;
import cn.zqrc.fts2.tools.PageBean;

/**
 *用户action
 * @author JiaQi
 *
 */
public class UserAction extends BaseAction<User>{
	
	/**
	 * 用户登陆
	 * 成功 跳转 index.jsp
	 * 失败 跳转 login.jsp
	 * JiaQi
	 */
	public String login(){
		User user = null;
		user = userService.findByNamePass(getModel().getUserName(), getModel().getPassword());
//		登陆判定 null登陆失败
		if(user != null){
//			抓取登陆时间
			user.setLoginTime(new Date());
//			抓取登录IP
			user.setLoginIP(ServletActionContext.getRequest().getRemoteAddr());
			userService.update(user);
//			放置当前登陆用户到session
			setAdmins(user);
			getIP();
			System.out.println("用户登录成功=======》"+user.getRealName()+"IP:"+ServletActionContext.getRequest().getRemoteAddr());
			return "index";
		}else{
//			方式登录失败提示信息
			ActionContext.getContext().getValueStack().set("msg", "*账号密码错误，请核对后再次登录！");
			return "login";
		}
	}
	
	/**
	 * 跳转到添加员工界面
	 * addStaff.jsp
	 * JiaQi
	 */
	public String toaddStaff(){
		return "addStaff";
	}
	
	/**
	 * 添加员工信息 
	 * 跳转到addStaff.jsp
	 * JiaQi
	 */
	public String addStaff(){
		
		if(userService.findByUserName(getModel().getUserName()) == null){
			User user = new User();
			user.setUserName(getModel().getUserName());
			user.setRealName(getModel().getRealName());
			user.setPassword(getModel().getPassword());
			user.setPhone(getModel().getPhone());
			user.setRole(getModel().getRole());
			user.setCanBid(getModel().getCanBid());
			user.setCanBrank(getModel().getCanBrank());
			user.setCanBusines(getModel().getCanBusines());
			user.setCanClear(getModel().getCanClear());
			user.setCanInsp(getModel().getCanInsp());
			user.setCanInsu(getModel().getCanInsu());
			user.setCanLogis(getModel().getCanLogis());
			userService.save(user);
			ActionContext.getContext().getValueStack().set("msg","*添加成功！" );
		}else{
			ActionContext.getContext().getValueStack().set("msg","*该账号已存在，请重新输入！" );
		}
		return "addStaff";
	}
	
	/**
	 * 跳转修改信息界面 updateStaff.jsp
	 * 获取需要修改员工ID
	 * 查询原始信息
	 * JiaQi
	 */
	public String toUpdateStaff(){
		ActionContext.getContext().getValueStack().set("user",userService.getById(getModel().getId()));
		return "updateStaff";
	}
	
	/**
	 * 修改信息 
	 * 获取需要修改员工ID
	 * 获取修改信息  提交修改
	 * JiaQi
	 */
	public String updateStaff(){
		User user = userService.getById(getModel().getId());
		user.setRealName(getModel().getRealName());
		user.setPhone(getModel().getPhone());
		user.setPassword(getModel().getPassword());
		user.setRole(getModel().getRole());
		user.setCanBid(getModel().getCanBid());
		user.setCanBrank(getModel().getCanBrank());
		user.setCanBusines(getModel().getCanBusines());
		user.setCanClear(getModel().getCanClear());
		user.setCanInsp(getModel().getCanInsp());
		user.setCanInsu(getModel().getCanInsu());
		user.setCanLogis(getModel().getCanLogis());
		userService.update(user);
		ActionContext.getContext().getValueStack().set("user", user);
		ActionContext.getContext().getValueStack().set("msg", "*修改成功！");
		return "updateStaff";
	}
	
	/**
	 * 跳转个人设置界面 userSetting.jsp
	 * 获取登录账号id
	 * JiaQi
	 */
	public String toUserSetting(){
		User user = userService.getById(getAdmins().getId());
		ActionContext.getContext().getValueStack().set("user", user);
		return "userSetting";
	}
	
	/**
	 * 修改个人设置界面 userSetting.jsp
	 * 获取登录账号id
	 * JiaQi
	 */
	public String userStaff(){
		User user = userService.getById(getAdmins().getId());
		user.setPassword(getModel().getPassword());
		user.setPhone(getModel().getPhone());
		userService.update(user);
		ActionContext.getContext().getValueStack().set("msg", "*修改成功！");
		ActionContext.getContext().getValueStack().set("user", user);
		setAdmins(user);
		return "userSetting";
	}

}
