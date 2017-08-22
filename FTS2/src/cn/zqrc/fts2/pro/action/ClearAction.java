package cn.zqrc.fts2.pro.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.Brand;
import cn.zqrc.fts2.pro.vo.Clear;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.tools.DateUtil;

/**
 * 清关
 * @author guo
 * 
 *
 */
public class ClearAction extends BaseAction<Clear>{
	private List<File> image; // 上传的文件
    private List<String> imageFileName; // 文件名称
    private List<String> imageContentType; // 文件类型
    private String savePath;
	
	private String file1;
	private String file2;
	private String file3;
	private String file4;
	
	public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}
	public String getFile2() {
		return file2;
	}
	public void setFile2(String file2) {
		this.file2 = file2;
	}
	public String getFile3() {
		return file3;
	}
	public void setFile3(String file3) {
		this.file3 = file3;
	}
	public String getFile4() {
		return file4;
	}
	public void setFile4(String file4) {
		this.file4 = file4;
	}
	
	/**
	 * guo
	 * 进入项目报关的详情页
	 */
	public String toProjectClear(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "projectClear";
	}
	/**
	 * guo
	 * 提交报关的信息
	 */
	public String projectClear(){
		Project project = projectService.getById(getModel().getId());
		
		 try {
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
	        // 取得需要上传的文件数组
	        List<File> files = getImage();
	        if (files != null && files.size() > 0) {
	            for (int i = 0; i < files.size(); i++) {
	            	
	            	getImageFileName().set(i, DateUtil.getUUID());
	                FileOutputStream fos = new FileOutputStream(getSavePath() + "\\" + getImageFileName().get(i)+".pdf");
	                FileInputStream fis = new FileInputStream(files.get(i));
	                byte[] buffer = new byte[1024];
	                int len = 0;
	                while ((len = fis.read(buffer)) > 0) {
	                    fos.write(buffer, 0, len);
	                }
	                fis.close();
	                fos.close();
	                if(file1.equals("1")){
	                	project.getClear().setTariffFile(getImageFileName().get(i)+".pdf");
	                	setFile1("0");
	                }else if(file2.equals("1")){
	                	project.getClear().setValueAddedFile(getImageFileName().get(i)+".pdf");
	                	setFile2("0");
	                }else if(file3.equals("1")){
	                	project.getClear().setExciseTaxFile(getImageFileName().get(i)+".pdf");
	                	setFile3("0");
	                }else if(file4.equals("1")){
	                	project.getClear().setInPortFile(getImageFileName().get(i)+".pdf");
	                	setFile4("0");
	                }
	            }
	        }
		 } catch (Exception e) {
				e.printStackTrace();
		}
		
		project.getClear().setClearPort(getModel().getClearPort());
		project.getClear().setInGoodDate(getModel().getInGoodDate());
		project.getClear().setTransportStyle(getModel().getTransportStyle());
		project.getClear().setTradeTerm(getModel().getTradeTerm());
		project.getClear().setTradingNation(getModel().getTradingNation());
		project.getClear().setOriginNation(getModel().getOriginNation());
		project.getClear().setWagyBillNum(getModel().getWagyBillNum());
		
		project.getClear().setTaxesDate(getModel().getTaxesDate());
		project.getClear().setTariff(getModel().getTariff());
		project.getClear().setValueAdded(getModel().getValueAdded());
		project.getClear().setExciseTax(getModel().getExciseTax());
		project.getClear().setAllTax(getModel().getAllTax());
		project.getClear().setComPortDate(getModel().getComPortDate());
		
		project.getClear().setPortDate(getModel().getPortDate());
		project.getClear().setInPortNum(getModel().getInPortNum());
		project.getClear().setPortNum(getModel().getPortNum());
		project.getClear().setInPortDoubleHead(getModel().getInPortDoubleHead());
		project.getClear().setReurnDate(getModel().getReurnDate());
		
		project.getClear().setClearMoney(getModel().getClearMoney());
		project.getClear().setWarehouseMoney(getModel().getWarehouseMoney());
		project.getClear().setInfo(getModel().getInfo());
		
		project.setIsClear(2);
		
		projectService.update(project);
		clearService.update(project.getClear());
		ActionContext.getContext().getValueStack().set("msg", "*设置成功！");
		
//		生成消息
		Date date =new Date();
		Message message =new Message();
		message.setMessageDate(date);
		message.setMessageValue("清关人提交工作！");
		message.setUser(project.getCreatUser());
		messageService.save(message);
		
		return "project_clearing";
	}
	
	/**
	 * 详情ye
	 * @return
	 */
	public String toShowClear(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "details_clear";
	}
	
	 public List<File> getImage() {
	        return image;
	    }

	    public void setImage(List<File> image) {
	        this.image = image;
	    }

	    public List<String> getImageFileName() {
	        return imageFileName;
	    }

	    public void setImageFileName(List<String> imageFileName) {
	        this.imageFileName = imageFileName;
	    }

	    public List<String> getImageContentType() {
	        return imageContentType;
	    }

	    public void setImageContentType(List<String> imageContentType) {
	        this.imageContentType = imageContentType;
	    }

	    /**
	     * 返回上传文件保存的位置
	     * 
	     * @return
	     * @throws Exception
	     */
	    public String getSavePath() throws Exception {
	        return ServletActionContext.getServletContext().getRealPath(savePath);
	    }

	    public void setSavePath(String savePath) {
	        this.savePath = savePath;
	    }
}
