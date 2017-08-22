package cn.zqrc.fts2.pro.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.Brank;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.tools.DateUtil;

/**
 * 银行
 * @author JiaQi
 *
 */
public class BrankAction extends BaseAction<Brank>{
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
	 * 跳转到提交工作页面
	 * JiaQi
	 */
	public String toProjectBrank(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "projectbrank";
	}
	
	public String toShowProjectBrank(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "showprojectbrank";
	}
	
	/**
	 * 提交工作
	 */
	public String projectBrank(){
		
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
	                	project.getBrank().setTTFiles(getImageFileName().get(i)+".pdf");
	                	setFile1("0");
	                }else if(file2.equals("1")){
	                	project.getBrank().setLCFiles(getImageFileName().get(i)+".pdf");
	                	setFile2("0");
	                }else if(file3.equals("1")){
	                	project.getBrank().setRCFiles(getImageFileName().get(i)+".pdf");
	                	setFile3("0");
	                }
	            }
	        }
		 } catch (Exception e) {
				e.printStackTrace();
		}
		
		project.getBrank().setCMoney(getModel().getCMoney());
		project.getBrank().setTTMoney1(getModel().getTTMoney1());
		
		project.getBrank().setTTTime1(getModel().getTTTime1());
		project.getBrank().setTTBrank1(getModel().getTTBrank1());
		project.getBrank().setOutMoney1(getModel().getOutMoney1());
		project.getBrank().setTTRloe1(getModel().getTTRloe1());
		project.getBrank().setRMBMoney1(getModel().getRMBMoney1());
		
		project.getBrank().setTTTime2(getModel().getTTTime2());
		project.getBrank().setTTBrank2(getModel().getTTBrank2());
		project.getBrank().setOutMoney2(getModel().getOutMoney2());
		project.getBrank().setTTRloe2(getModel().getTTRloe2());
		project.getBrank().setRMBMoney2(getModel().getRMBMoney2());
		
		project.getBrank().setTTTime3(getModel().getTTTime3());
		project.getBrank().setTTBrank3(getModel().getTTBrank3());
		project.getBrank().setOutMoney3(getModel().getOutMoney3());
		project.getBrank().setTTRloe3(getModel().getTTRloe3());
		project.getBrank().setRMBMoney3(getModel().getRMBMoney3());
		
		project.getBrank().setTTTime4(getModel().getTTTime4());
		project.getBrank().setTTBrank4(getModel().getTTBrank4());
		project.getBrank().setOutMoney4(getModel().getOutMoney4());
		project.getBrank().setTTRloe4(getModel().getTTRloe4());
		project.getBrank().setRMBMoney4(getModel().getRMBMoney4());
		
		project.getBrank().setTTTime5(getModel().getTTTime5());
		project.getBrank().setTTBrank5(getModel().getTTBrank5());
		project.getBrank().setOutMoney5(getModel().getOutMoney5());
		project.getBrank().setTTRloe5(getModel().getTTRloe5());
		project.getBrank().setRMBMoney5(getModel().getRMBMoney5());
		
		project.getBrank().setAllRMBMoney(getModel().getAllRMBMoney());
		
		project.getBrank().setLCTime(getModel().getLCTime());
		project.getBrank().setLCBrank(getModel().getLCBrank());
		project.getBrank().setLCNum(getModel().getLCNum());
		project.getBrank().setLCMoneyStyle(getModel().getLCMoneyStyle());
		project.getBrank().setCChangeTime(getModel().getCChangeTime());
		project.getBrank().setOutTime(getModel().getOutTime());
		project.getBrank().setOutRole(getModel().getOutRole());
		project.getBrank().setOutMoney(getModel().getOutMoney());
		project.getBrank().setOutRMBMoney(getModel().getOutRMBMoney());
		project.getBrank().setOutRMBMoney(getModel().getOutRMBMoney());
		project.getBrank().setInfo(getModel().getInfo());
		
		project.setIsBank(2);
		brankService.update(project.getBrank());
		projectService.update(project);
		ActionContext.getContext().getValueStack().set("msg", "*提交成功！");
		
//		生成消息
		Date date =new Date();
		Message message =new Message();
		message.setMessageDate(date);
		message.setMessageValue("银行人提交工作！");
		message.setUser(project.getCreatUser());
		messageService.save(message);
		
		return "projectbranking";
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
