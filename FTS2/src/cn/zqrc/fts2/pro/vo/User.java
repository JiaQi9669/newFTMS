package cn.zqrc.fts2.pro.vo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 用户
 * @author JiaQi
 *
 */
public class User{
	private Integer id;
	private String  userName;
	private String password;
	private String phone;
	private String realName;
	private Date loginTime;
	private String LoginIP;
	private Integer role;//权限 1超级管理员  2 管理员  3员工   4理想人
	private Set<Project> creatProjects = new HashSet<Project>();//关联多个立项项目
	private Set<Project> brankProjects = new HashSet<Project>();//关联多个立项项目
	private Set<Project> clearProjects = new HashSet<Project>();//关联多个立项项目
	private Set<Project> bidProjects = new HashSet<Project>();//关联多个立项项目
	private Set<Project> businesProjects = new HashSet<Project>();//关联多个立项项目
	private Set<Project> insuProjects = new HashSet<Project>();//关联多个立项项目
	private Set<Project> inspProjects = new HashSet<Project>();//关联多个立项项目
	private Set<Project> logisProjects = new HashSet<Project>();//关联多个立项项目
	private Set<Brand> brands = new HashSet<Brand>();
	private Set<Brand> creat_brands = new HashSet<Brand>();
	private Set<Project> projects = new HashSet<Project>();//关联多个立项项目
	
	//1可以查看
	private Integer canBid;
	private Integer canBrank;
	private Integer canBusines;
	private Integer canClear;
	private Integer canInsp;
	private Integer canInsu;
	private Integer canLogis;
	
	private Set<Message> messages = new HashSet<Message>();
	
	public Integer getCanBid() {
		return canBid;
	}

	public Set<Brand> getCreat_brands() {
		return creat_brands;
	}
	
	public Set<Project> getProjects() {
		return projects;
	}

	public void setProjects(Set<Project> projects) {
		this.projects = projects;
	}

	public void setCreat_brands(Set<Brand> creat_brands) {
		this.creat_brands = creat_brands;
	}
	
	public void setCanBid(Integer canBid) {
		this.canBid = canBid;
	}

	public Integer getCanBrank() {
		return canBrank;
	}

	public void setCanBrank(Integer canBrank) {
		this.canBrank = canBrank;
	}

	public Integer getCanBusines() {
		return canBusines;
	}

	public void setCanBusines(Integer canBusines) {
		this.canBusines = canBusines;
	}

	public Integer getCanClear() {
		return canClear;
	}

	public void setCanClear(Integer canClear) {
		this.canClear = canClear;
	}

	public Integer getCanInsp() {
		return canInsp;
	}

	public void setCanInsp(Integer canInsp) {
		this.canInsp = canInsp;
	}

	public Integer getCanInsu() {
		return canInsu;
	}

	public void setCanInsu(Integer canInsu) {
		this.canInsu = canInsu;
	}

	public Integer getCanLogis() {
		return canLogis;
	}

	public void setCanLogis(Integer canLogis) {
		this.canLogis = canLogis;
	}

	public Set<Message> getMessages() {
		return messages;
	}

	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}

	public User() {
	}
	
	public Set<Project> getCreatProjects() {
		return creatProjects;
	}

	public void setCreatProjects(Set<Project> creatProjects) {
		this.creatProjects = creatProjects;
	}

	public Set<Project> getBrankProjects() {
		return brankProjects;
	}

	public void setBrankProjects(Set<Project> brankProjects) {
		this.brankProjects = brankProjects;
	}

	public Set<Project> getClearProjects() {
		return clearProjects;
	}

	public void setClearProjects(Set<Project> clearProjects) {
		this.clearProjects = clearProjects;
	}

	public Set<Project> getBidProjects() {
		return bidProjects;
	}

	public void setBidProjects(Set<Project> bidProjects) {
		this.bidProjects = bidProjects;
	}

	public Set<Project> getBusinesProjects() {
		return businesProjects;
	}

	public void setBusinesProjects(Set<Project> businesProjects) {
		this.businesProjects = businesProjects;
	}

	public Set<Project> getInsuProjects() {
		return insuProjects;
	}

	public void setInsuProjects(Set<Project> insuProjects) {
		this.insuProjects = insuProjects;
	}

	public Set<Project> getInspProjects() {
		return inspProjects;
	}

	public void setInspProjects(Set<Project> inspProjects) {
		this.inspProjects = inspProjects;
	}

	public Set<Project> getLogisProjects() {
		return logisProjects;
	}

	public void setLogisProjects(Set<Project> logisProjects) {
		this.logisProjects = logisProjects;
	}
	
	public Set<Brand> getBrands() {
		return brands;
	}
	
	public void setBrands(Set<Brand> brands) {
		this.brands = brands;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	public String getLoginIP() {
		return LoginIP;
	}
	public void setLoginIP(String loginIP) {
		LoginIP = loginIP;
	}
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}

	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", password="
				+ password + ", phone=" + phone + ", realName=" + realName
				+ ", loginTime=" + loginTime + ", LoginIP=" + LoginIP
				+ ", role=" + role + ", creatProjects=" + creatProjects
				+ ", brankProjects=" + brankProjects + ", clearProjects="
				+ clearProjects + ", bidProjects=" + bidProjects
				+ ", businesProjects=" + businesProjects + ", insuProjects="
				+ insuProjects + ", inspProjects=" + inspProjects
				+ ", logisProjects=" + logisProjects + ", brands=" + brands
				+ "]";
	}
	
}