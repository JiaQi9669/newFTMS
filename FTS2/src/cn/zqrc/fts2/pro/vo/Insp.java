package cn.zqrc.fts2.pro.vo;

import java.util.Date;

/**
 * 商检
 * @author JiaQi
 *
 */
public class Insp {
	private Integer id;
	
	private String inspectionNum;//报检号
	private Date inspDate;//检验日期
	private String inspMech;//商检检验机构
	private String inspStyle;//检验形式
	private String inspFile;//报检单 文件
	private String overInsp;//验收报告 wenjian
	private String inspCertFile;//商检证 文件
	private String inspMoney;//商检费
	private String installName;//装机工程师联系人
	private String installPhone;//装机工程师联系电话
	private String placeName;//场地工程师联系人
	private String placePhone;//场地工程师联系电话
	
	private Project project;//关联一个项目
	private String info;
	
	
	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getPlacePhone() {
		return placePhone;
	}

	public void setPlacePhone(String placePhone) {
		this.placePhone = placePhone;
	}

	public Insp() {
	}
	
	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getInspectionNum() {
		return inspectionNum;
	}

	public void setInspectionNum(String inspectionNum) {
		this.inspectionNum = inspectionNum;
	}

	public Date getInspDate() {
		return inspDate;
	}

	public void setInspDate(Date inspDate) {
		this.inspDate = inspDate;
	}

	public String getInspMech() {
		return inspMech;
	}

	public void setInspMech(String inspMech) {
		this.inspMech = inspMech;
	}

	public String getInspStyle() {
		return inspStyle;
	}

	public void setInspStyle(String inspStyle) {
		this.inspStyle = inspStyle;
	}

	public String getInspFile() {
		return inspFile;
	}

	public void setInspFile(String inspFile) {
		this.inspFile = inspFile;
	}

	public String getOverInsp() {
		return overInsp;
	}

	public void setOverInsp(String overInsp) {
		this.overInsp = overInsp;
	}

	public String getInspCertFile() {
		return inspCertFile;
	}

	public void setInspCertFile(String inspCertFile) {
		this.inspCertFile = inspCertFile;
	}

	public String getInspMoney() {
		return inspMoney;
	}

	public void setInspMoney(String inspMoney) {
		this.inspMoney = inspMoney;
	}

	public String getInstallPhone() {
		return installPhone;
	}

	public void setInstallPhone(String installPhone) {
		this.installPhone = installPhone;
	}

	public String getInstallName() {
		return installName;
	}

	public void setInstallName(String installName) {
		this.installName = installName;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
	
	
}
