package cn.zqrc.fts2.pro.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.Insu;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.tools.DateUtil;

/**
 * 保险
 * @author JiaQi
 *
 */
public class InsuAction extends BaseAction<Insu>{
	private List<File> image; // 上传的文件
    private List<String> imageFileName; // 文件名称
    private List<String> imageContentType; // 文件类型
    private String savePath;
    
	/**
	 * 跳转保险界面
	 * insu
	 * JiaQi
	 */
	public String toProjectInsu(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "project_insp";
	}
	
	/**
	 * 保存提交保险
	 * JiaQi
	 */
	public String projectInsu(){
		Insu insu = insuService.getById(getModel().getId());
		
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
	                insu.setInsuFile(getImageFileName().get(i)+".pdf");
	            }
	        }
		 } catch (Exception e) {
				e.printStackTrace();
		}
		insu.getProject().setIsInsu(2);
		insu.setInfo(getModel().getInfo());
		insu.setInsuMoney(getModel().getInsuMoney());
		insu.setInsuPerson(getModel().getInsuPerson());
		projectService.update(insu.getProject());
		insuService.update(insu);
		ActionContext.getContext().getValueStack().set("msg","*提交成功！");
		
//		生成消息
		Date date =new Date();
		Message message =new Message();
		message.setMessageDate(date);
		message.setMessageValue("保险人提交工作！");
		message.setUser(insu.getProject().getCreatUser());
		messageService.save(message);
		
		return "toproject_insping";
	}
	
	/**
	 * 展示详情
	 * @return
	 */
	public String toShowInsu(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "detail_insu";
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
