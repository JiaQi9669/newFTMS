package cn.zqrc.fts2.pro.service.impl;

import java.util.Date;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.MessageService;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.User;

/**
 * 消息
 * @author guo
 * 
 */

@Service
@Transactional
public class MessageServiceImpl extends BaseDaoImpl<Message> implements MessageService{
	/**
	 * guo
	 * 消息的总数
	 */
	public Integer getByIdMessageTotal(User user) {
		return (Integer) getSession().createQuery("select count(*) from Message m where m.user = ? ").setInteger(0, user.getId()).uniqueResult();
	}

	
}
