package cn.zqrc.fts2.tools;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.support.WebApplicationContextUtils;

import com.opensymphony.xwork2.ActionContext;


//服务启动后启动代码
public class InitListener implements ServletContextListener {  
  
    public void contextDestroyed(ServletContextEvent context) {  
          
    }  
  
    public void contextInitialized(ServletContextEvent context) {  
        // 上下文初始化执行  
        System.out.println("================>[ServletContextListener]自动加载启动开始.");  
        new TimerManager();
//        t.start();
//        new TimerManager();
//       SpringUtil.getInstance().setContext(WebApplicationContextUtils.getWebApplicationContext(arg0.getServletContext()));  
    }  
}