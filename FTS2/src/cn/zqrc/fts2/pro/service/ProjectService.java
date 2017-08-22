package cn.zqrc.fts2.pro.service;

import java.util.List;

import cn.zqrc.fts2.base.BaseDao;
import cn.zqrc.fts2.pro.vo.Project;

/**
 * 项目
 * @author JiaQi
 *
 */
public interface ProjectService extends BaseDao<Project>{
	Integer findId();
	List<Project> findProject(String search,String value);
	List<Project> findAllNoOver();
}