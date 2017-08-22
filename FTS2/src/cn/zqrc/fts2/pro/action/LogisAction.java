package cn.zqrc.fts2.pro.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.Logis;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.tools.DateUtil;

/**
 * 物流
 * @author JiaQi
 *
 */
public class LogisAction extends BaseAction<Logis>{
 	private List<File> image; // 上传的文件
    private List<String> imageFileName; // 文件名称
    private List<String> imageContentType; // 文件类型
    private String savePath;
    
    private String file1;
    private String file2;
    private String file3;
	
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
	
	/**
	 * 跳转物流
	 */
	public String toProjectLogins(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "projectlogis";
	}
	
	/**
	 * 详情
	 */
	public String toShowProjectLogins(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "showProjectlogis";
	}
	
	/**
	 * 保存物流
	 */
	public String projectLogis(){
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
		                	project.getLogis().setInLogisFile(getImageFileName().get(i)+".pdf");
		                	setFile1("0");
		                }else if(file2.equals("1")){
		                	project.getLogis().setInGoodsFile(getImageFileName().get(i)+".pdf");
		                	setFile2("0");
		                }else if(file3.equals("1")){
		                	project.getLogis().setOutGoodsFile(getImageFileName().get(i)+".pdf");
		                	setFile3("0");
		                }
		            }
		        }
			 } catch (Exception e) {
					e.printStackTrace();
			}
		
		
		project.getLogis().setOutGoodsTime(getModel().getOutGoodsTime());
		project.getLogis().setOutGoodsName(getModel().getOutGoodsName());
		project.getLogis().setOutGoodsPhone(getModel().getOutGoodsPhone());
		project.getLogis().setOutGoodsCarId(getModel().getOutGoodsCarId());
		project.getLogis().setOutGoodsIDCard(getModel().getOutGoodsIDCard());
		project.getLogis().setLogisName(getModel().getLogisName());
		project.getLogis().setLogisPhone(getModel().getLogisPhone());
		project.getLogis().setLogisCarId(getModel().getLogisCarId());
		project.getLogis().setLogisIDCard(getModel().getLogisIDCard());
		project.getLogis().setLogisPartName(getModel().getLogisPartName());
		project.getLogis().setLogisPartAdress(getModel().getLogisName());
		project.getLogis().setLogisPartPersonName(getModel().getLogisPartPersonName());
		project.getLogis().setLogisPartPhone(getModel().getLogisPartPhone());
		project.getLogis().setInGoodsName(getModel().getInGoodsName());
		project.getLogis().setInGoodsPhone(getModel().getInGoodsPhone());
		project.getLogis().setInGoodsPartName(getModel().getInGoodsPartName());
		project.getLogis().setInGoodsAdress(getModel().getInGoodsAdress());
		project.getLogis().setInGoodsTime(getModel().getInGoodsTime());
		project.getLogis().setWarehouseName(getModel().getWarehouseName());
		project.getLogis().setWarehousePhone(getModel().getWarehousePhone());
		project.getLogis().setWarehouseAdress(getModel().getWarehouseAdress());
		project.getLogis().setPhone(getModel().getPhone());
		project.getLogis().setInWarehouseMoney(getModel().getInWarehouseMoney());
		
		project.getLogis().setOutWareTime1(getModel().getOutWareTime1());
		project.getLogis().setOutWareNum1(getModel().getOutWareNum1());
		project.getLogis().setOutWareTime2(getModel().getOutWareTime2());
		project.getLogis().setOutWareNum2(getModel().getOutWareNum2());
		project.getLogis().setOutWareTime3(getModel().getOutWareTime3());
		project.getLogis().setOutWareNum3(getModel().getOutWareNum3());
		project.getLogis().setOutWareTime4(getModel().getOutWareTime4());
		project.getLogis().setOutWareNum4(getModel().getOutWareNum4());
		project.getLogis().setOutWareTime5(getModel().getOutWareTime5());
		project.getLogis().setOutWareNum5(getModel().getOutWareNum5());
		
		project.getLogis().setInfo(getModel().getInfo());
		
		logisService.update(project.getLogis());
		project.setIsLogis(2);
		projectService.update(project);
		ActionContext.getContext().getValueStack().set("msg", "*提交成功!");
		
//		生成消息
		Date date =new Date();
		Message message =new Message();
		message.setMessageDate(date);
		message.setMessageValue("物流人提交工作！");
		message.setUser(project.getCreatUser());
		messageService.save(message);
		
		
		return "projectloginsing";
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
