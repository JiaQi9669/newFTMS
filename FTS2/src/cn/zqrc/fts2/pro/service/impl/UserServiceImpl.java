package cn.zqrc.fts2.pro.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.UserService;
import cn.zqrc.fts2.pro.vo.User;

/**
 * User
 * @author JiaQi
 *
 */
@Service
@Transactional
public class UserServiceImpl extends BaseDaoImpl<User> implements UserService{
	
	/**
	 * 通过账号密码查找查找唯一结果
	 * 未查询到返回null
	 * JiaQi
	 */
	public User findByNamePass(String userName,String password) {
		return (User) getSession().createQuery("from User where userName = ? and password = ?").setString(0, userName).setString(1, password).uniqueResult();
	}
	
	/**
	 * 通过账号查找用户
	 * 无该用户返回 null
	 * JiaQi
	 */
	public User findByUserName(String userName) {
		return (User) getSession().createQuery("from User where userName = ?").setString(0, userName).uniqueResult();
	}

}
