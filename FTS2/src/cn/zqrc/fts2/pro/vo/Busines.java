package cn.zqrc.fts2.pro.vo;
/**
 * 机电证
 * @author JiaQi
 *
 */
public class Busines {
	private Integer id;
	
	private String inCanNum;//机电产品进口许可证编号
	private String inCanFile;//机电产品进口许可证（文件）
	private String inAutoNum;//自动进口许可证编号
	private String inAutoFile;//自动进口许可证（文件）
	private String info;
	
	private Project project;//关联一个项目

	public Busines() {
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

	public String getInCanNum() {
		return inCanNum;
	}

	public void setInCanNum(String inCanNum) {
		this.inCanNum = inCanNum;
	}

	public String getInCanFile() {
		return inCanFile;
	}

	public void setInCanFile(String inCanFile) {
		this.inCanFile = inCanFile;
	}

	public String getInAutoNum() {
		return inAutoNum;
	}

	public void setInAutoNum(String inAutoNum) {
		this.inAutoNum = inAutoNum;
	}

	public String getInAutoFile() {
		return inAutoFile;
	}

	public void setInAutoFile(String inAutoFile) {
		this.inAutoFile = inAutoFile;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
	
	
}
