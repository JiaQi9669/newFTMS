package cn.zqrc.fts2.pro.service;

import cn.zqrc.fts2.base.BaseDao;
import cn.zqrc.fts2.pro.vo.Insp;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.User;

/**
 * 消息
 * @author guo
 *
 */
public interface MessageService extends BaseDao<Message>{
//	消息的总数
	public Integer getByIdMessageTotal(User user);
	
}
