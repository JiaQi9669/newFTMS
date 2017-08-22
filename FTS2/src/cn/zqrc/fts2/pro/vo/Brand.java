package cn.zqrc.fts2.pro.vo;

import java.util.HashSet;
import java.util.Set;

/**
 * 品牌
 * @author JiaQi
 *
 */
public class Brand {
	private Integer id;
	private String name;
	private Integer projectNum;
	private String info;
	private User user;
	private User creatuser;
	private Set<Project> projects = new HashSet<Project>();//关联多个项目
	
	public Brand() {
	}
	
	public User getCreatuser() {
		return creatuser;
	}

	public void setCreatuser(User creatuser) {
		this.creatuser = creatuser;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getProjectNum() {
		return projectNum;
	}
	public void setProjectNum(Integer projectNum) {
		this.projectNum = projectNum;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Set<Project> getProjects() {
		return projects;
	}
	public void setProjects(Set<Project> projects) {
		this.projects = projects;
	}
	
	
}
