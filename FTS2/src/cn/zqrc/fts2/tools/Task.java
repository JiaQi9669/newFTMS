package cn.zqrc.fts2.tools;
import java.util.Date;
import java.util.List;
import java.util.TimerTask;  

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import sun.awt.AppContext;

import cn.zqrc.fts2.pro.action.MessageAction;
import cn.zqrc.fts2.pro.service.BrankService;
import cn.zqrc.fts2.pro.service.MessageService;
import cn.zqrc.fts2.pro.service.ProjectService;
import cn.zqrc.fts2.pro.service.impl.MessageServiceImpl;
import cn.zqrc.fts2.pro.service.impl.ProjectServiceImpl;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.Project;

/** 
 * 执行内容 
 * @author admin_Hzw 
 * 
 */  
public class Task extends TimerTask {
	private ApplicationContext appContext = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
	private MessageService messageService=appContext.getBean(MessageService.class);
	private ProjectService projectService=appContext.getBean(ProjectService.class);

	//	MessageServiceImpl	messageService = new MessageServiceImpl();
	//	ProjectServiceImpl projectService = new ProjectServiceImpl();


	//任务 每天生成提醒消息
	public void run() {  
		//		brank.TTTime1	电汇日期	brank.outTime	付汇日期
		//		clear.taxesDate	交税日期
		//		clear.portDate	报关日期
		//		insp.inspDate	商检日期
		//		clear.inGoodDate	预计到货日期
		//		bid.openBidDate	开标日期

		/*		
1.关于XX （内部编号），xx（最终用户） xx(品名），电汇或付汇时间为xxx，电汇或付汇时间与报关时间间隔已有21天，请及时跟踪业务进程。
2.关于XX （内部编号），xx（最终用户） xx(品名），缴税日期为xxx，今天距缴税日期已有14天，请及时跟踪业务进程
3.关于XX （内部编号），xx（最终用户） xx(品名），报关日期为xxx，今天距报关日期已有14天，请及时跟踪业务进程
4.关于XX （内部编号），xx（最终用户） xx(品名），检验日期为xxx，今天距检验日期已有14天，请及时跟踪业务进程
5.关于XX （内部编号），xx（最终用户） xx(品名），预计到货时间为xxx，今天距预计到货时间还有7天，请及时跟踪业务进程
6.关于XX （内部编号），xx（最终用户） xx(品名），开标日期为xxx，今天距开标日期还有7天，请及时跟踪业务进程
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
//		List<Project> findAllOver = projectService.findAll();
		//		List<Project> findAllOver = projectService.findAll();
		//		System.out.println(findAllOver.size());
		for (Project project : findAllOver) {
			message.setUser(project.getCreatUser());
			//			空指针的处理
			try {
				//System.out.println(date.getTime() - project.getBrank().getTTTime1().getTime()<21*24*60*60*1000);
				//			对比剩余天数 电汇和付汇
//				System.out.println(date.getTime()-project.getBrank().getTTTime1().getTime()>20*24*60*60*1000);
				if(date.getTime()-project.getBrank().getTTTime1().getTime()<21*24*60*60*1000 && date.getTime()-project.getBrank().getTTTime1().getTime()>20*24*60*60*1000 ){
					System.out.println("1");
					message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"电汇，信用证付汇时间已过21天，请注意跟踪业务进程!");
					messageService.save(message);
				}
			} catch (Exception e) {
			}

			try {
				if(date.getTime()-project.getClear().getTaxesDate().getTime()<14*24*60*60*1000 && date.getTime()-project.getClear().getTaxesDate().getTime()>13*24*60*60*1000 ){
					message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"缴税日期已过14天，请注意跟踪业务进程!");
					messageService.save(message);
				}
			} catch (Exception e) {
			}

			try {
				if(date.getTime()-project.getClear().getPortDate().getTime()<14*24*60*60*1000 && date.getTime()-project.getClear().getPortDate().getTime()>13*24*60*60*1000){
					message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"报关日期已过14天，请注意跟踪业务进程!");
					messageService.save(message);
				}
			} catch (Exception e) {
			}
			try {
				if(date.getTime()-project.getInsp().getInspDate().getTime()<14*24*60*60*1000 && date.getTime()-project.getInsp().getInspDate().getTime()>13*24*60*60*1000){
					message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"检验日期已过21天，请注意跟踪业务进程!");
					messageService.save(message);
				}
			} catch (Exception e) {
			}
			try {
				if(project.getClear().getInGoodDate().getTime()-date.getTime()<7*24*60*60*1000 && project.getClear().getInGoodDate().getTime()-date.getTime()>6*24*60*60*1000){
					message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"预计到货日期7天后，请注意跟踪业务进程!");
					messageService.save(message);
				}
			} catch (Exception e) {
			}
			try {
				if(project.getBid().getOpenBidDate().getTime()-date.getTime()<7*24*60*60*1000 && project.getBid().getOpenBidDate().getTime()-date.getTime()>6*24*60*60*1000){
					message.setMessageValue("关于"+project.getInNum()+","+project.getFinalUser()+" "+project.getProductName()+"开标日期已过7天，请注意跟踪业务进程!");
					messageService.save(message);
				}
			} catch (Exception e) {
			}

		}
		//		MessageAction messageAction = new MessageAction();
		//		messageAction.createMessage();
		//		messageAction.findProject();
	}
}