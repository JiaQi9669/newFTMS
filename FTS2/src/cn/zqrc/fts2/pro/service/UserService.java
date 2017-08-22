package cn.zqrc.fts2.pro.service;

import java.util.List;

import cn.zqrc.fts2.base.BaseDao;
import cn.zqrc.fts2.pro.vo.User;

/**
 * User 实现接口
 * @author JiaQi
 *
 */
public interface UserService extends BaseDao<User>{
	
	/**
	 * 通过账号密码查找用户
	 * 无该用户返回 null
	 * JiaQi
	 */
	User findByNamePass(String userName,String password);
	
	/**
	 * 通过账号查找用户
	 * 无该用户返回 null
	 * JiaQi
	 */
	User findByUserName(String userName);

	List<User> findCreat();
}
