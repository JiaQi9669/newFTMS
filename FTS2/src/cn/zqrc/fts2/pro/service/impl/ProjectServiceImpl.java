package cn.zqrc.fts2.pro.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zqrc.fts2.base.BaseDaoImpl;
import cn.zqrc.fts2.pro.service.ProjectService;
import cn.zqrc.fts2.pro.vo.Project;

/**
 * 项目
 * @author JiaQi
 *
 */
@Service
@Transactional
public class ProjectServiceImpl extends BaseDaoImpl<Project> implements ProjectService{
	/**
	 * 获取最大Id
	 * JiaQi
	 * @return
	 */
	public Integer findId() {
//		return getSession().createQuery("FROM Users u WHERE u.role = ?").setInteger(0,roleNum).list();
		String sql = "select max(id) id from t_project";
		List<Object> list = getSession().createSQLQuery(sql).list();
		Integer id=null;
		for (Object object : list) {
			id=(Integer) object;
			return id;
		}
		return id;
	}
	//	根据条件进行搜索数据
	public List<Project> findProject(String search,String value) {
		//		以项目为条件进行查询
		return (List<Project>)getSession().createQuery("FROM Project p WHERE p."+search+"= ?").setString(0,value).list();
	}

//	获得所有的未完结的项目
	public List<Project> findAllNoOver(){
//		String sql = "SELECT * FROM Project p WHERE p.isOver = 1";
//		List<Project> list = getSession().createSQLQuery(sql).list();
		return (List<Project>)getSession().createQuery("FROM Project p WHERE p.isOver = 1 " ).list();
//		return list;
	}
}
