package cn.zqrc.fts2.pro.action;


import java.util.Date;
import java.util.List;
import java.util.Set;


import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.pro.vo.User;
import cn.zqrc.fts2.tools.HqlHelper;
import cn.zqrc.fts2.tools.PageBean;

//消息提醒的动态显示
public class MessageAction extends BaseAction<Message> {

	private static final long serialVersionUID = 1L;
	//	private String total;
	//
	//	public String getTotal() {
	//		return total;
	//	}
	//
	//	public void setTotal(String total) {
	//		this.total = total;
	//	}

	//	获得未读消息的数量
	public String save() {  
		User admins = getAdmins();
		Set<Message> messages = admins.getMessages();
		Integer total = messages.size();
		getModel().setId(total);
		return "save";    
	}  

	//	展示已看信息
	public String userMessage(){

		HqlHelper helper=new HqlHelper(Message.class, "m").addOrderByProperty("id", false).addWhereCondition("m.user.id = ?", getAdmins().getId());
		PageBean pageBean =messageService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		//		ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);

		//		User admins = getAdmins();
		//		Set<Message> messages = admins.getMessages();
		//		ActionContext.getContext().getValueStack().set("messages", messages);
		return "userMessage";
	}
	//	删除已看信息
	public String delectMessage(){
		messageService.delete(getModel().getId());
		HqlHelper helper=new HqlHelper(Message.class, "m").addOrderByProperty("id", false).addWhereCondition("m.user.id = ?", getAdmins().getId());
		PageBean pageBean =messageService.getPageBean(pageNum,10, helper);
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "userMessage";
	}

	/**
	 * guo
	 * 新建提交工作提醒消息
	 */
	public void createMessage(String messageValue,User user) {
		// TODO Auto-generated method stub
		Date date =new Date();
		Message message =new Message();
		message.setMessageDate(date);
		message.setMessageValue(messageValue);
		message.setUser(user);
		messageService.save(message);
	}

	/**
	 * guo
	 * 新建提醒消息
	 */
	public void createMessage() {
		System.out.println("生成提醒消息");
		//		brank.TTTime1	电汇日期	brank.outTime	付汇日期
		//		clear.taxesDate	交税日期
		//		clear.portDate	报关日期
		//		insp.inspDate	商检日期
		//		clear.inGoodDate	预计到货日期
		//		bid.openBidDate	开标日期

		/*		
		关于内部编号 项目名 品名，电汇，信用证付汇时间已过21天，请注意跟踪业务进程
		关于内部编号 项目名 品名，缴税日期已过21天，请注意跟踪业务进程
		关于内部编号 项目名 品名，报关日期已过21天，请注意跟踪业务进程
		关于内部编号 项目名 品名，检验日期已过21天，请注意跟踪业务进程
		关于内部编号 项目名 品名，预计到货日期7天后，请注意跟踪业务进程
		关于内部编号 项目名 品名，开标日期7天后，请注意跟踪业务进程
		 */

		//		如今的时间
		Date date =new Date();
		//		保存的信息
		Message message =new Message();
		message.setMessageDate(date);
//测试 空指针错误
//		projectService.getById(1);

		//		所有的未结项的项目
		List<Project> findAllOver = projectService.findAllNoOver();
		for (Project project : findAllOver) {
			message.setUser(project.getCreatUser());
			//			对比剩余天数 电汇和付汇
			if(date.getTime()-project.getBrank().getTTTime1().getTime()<21*24*60*60*1000 && date.getTime()-project.getBrank().getTTTime1().getTime()>20*24*60*60*1000){
				message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"电汇，信用证付汇时间已过21天，请注意跟踪业务进程!");
				message.setUser(project.getCreatUser());
				messageService.save(message);

			}
			if(date.getTime()-project.getClear().getTaxesDate().getTime()<21*24*60*60*1000 && date.getTime()-project.getClear().getTaxesDate().getTime()>20*24*60*60*1000 ){
				message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"缴税日期已过21天，请注意跟踪业务进程!");
				message.setUser(project.getCreatUser());
				messageService.save(message);

			}
			if(date.getTime()-project.getClear().getPortDate().getTime()<21*24*60*60*1000 && date.getTime()-project.getClear().getPortDate().getTime()>20*24*60*60*1000){
				message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"报关日期已过21天，请注意跟踪业务进程!");
				message.setUser(project.getCreatUser());
				messageService.save(message);

			}
			if(date.getTime()-project.getInsp().getInspDate().getTime()<21*24*60*60*1000 && date.getTime()-project.getInsp().getInspDate().getTime()>20*24*60*60*1000){
				message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"检验日期已过21天，请注意跟踪业务进程!");
				message.setUser(project.getCreatUser());
				messageService.save(message);

			}
			if(date.getTime()-project.getClear().getInGoodDate().getTime()<7*24*60*60*1000 && date.getTime()-project.getClear().getInGoodDate().getTime()>6*24*60*60*1000){
				message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"预计到货日期7天后，请注意跟踪业务进程!");
				message.setUser(project.getCreatUser());
				messageService.save(message);

			}
			if(date.getTime()-project.getBid().getOpenBidDate().getTime()<7*24*60*60*1000 && date.getTime()-project.getBid().getOpenBidDate().getTime()>6*24*60*60*1000){
				message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"开标日期已过7天，请注意跟踪业务进程!");
				message.setUser(project.getCreatUser());
				messageService.save(message);
			}

		}
	}
}
