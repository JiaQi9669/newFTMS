package cn.zqrc.fts2.pro.vo;
/**
 * 保险
 * @author JiaQi
 *
 */
public class Insu {
	private Integer id;
	
	private String insuPerson;//被保险人
	private String insuFile;//保险单  文件
	private String insuMoney;//保险费
	private String info;
	
	public Insu() {
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

	public String getInsuPerson() {
		return insuPerson;
	}

	public void setInsuPerson(String insuPerson) {
		this.insuPerson = insuPerson;
	}

	public String getInsuFile() {
		return insuFile;
	}

	public void setInsuFile(String insuFile) {
		this.insuFile = insuFile;
	}

	public String getInsuMoney() {
		return insuMoney;
	}

	public void setInsuMoney(String insuMoney) {
		this.insuMoney = insuMoney;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	private Project project;//关联一个项目
	
	
}
