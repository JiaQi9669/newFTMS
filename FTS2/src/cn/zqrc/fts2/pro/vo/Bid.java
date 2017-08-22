package cn.zqrc.fts2.pro.vo;

import java.util.Date;

/**
 * 招投标
 * @author JiaQi
 *
 */
public class Bid {
	private Integer id;
	
	private String bidCompany;//招标单位
	private String bidNum;//招标标号
	private String owner;//业主
	private Date openBidDate;//开标日期
	private String bidResultFile;//招投标评标结果(文件）
	private String bidTellFile;//中标通知书（文件）
	private String bidMoney;//招标费
	private String info;
	
	public Bid() {
	}
	
	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	private Project project;//关联一个项目
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBidCompany() {
		return bidCompany;
	}

	public void setBidCompany(String bidCompany) {
		this.bidCompany = bidCompany;
	}

	public String getBidNum() {
		return bidNum;
	}

	public void setBidNum(String bidNum) {
		this.bidNum = bidNum;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public Date getOpenBidDate() {
		return openBidDate;
	}

	public void setOpenBidDate(Date openBidDate) {
		this.openBidDate = openBidDate;
	}

	public String getBidResultFile() {
		return bidResultFile;
	}

	public void setBidResultFile(String bidResultFile) {
		this.bidResultFile = bidResultFile;
	}

	public String getBidTellFile() {
		return bidTellFile;
	}

	public void setBidTellFile(String bidTellFile) {
		this.bidTellFile = bidTellFile;
	}

	public String getBidMoney() {
		return bidMoney;
	}

	public void setBidMoney(String bidMoney) {
		this.bidMoney = bidMoney;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
	
	
}
