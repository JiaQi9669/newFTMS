package cn.zqrc.fts2.pro.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.Bid;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.tools.DateUtil;

/**
 * 招投标
 * @author JiaQi
 * to guoEZ
 */
public class BidAction extends BaseAction<Bid>{
 	private List<File> image; // 上传的文件
    private List<String> imageFileName; // 文件名称
    private List<String> imageContentType; // 文件类型
    private String savePath;
    
    private String file1;
    private String file2;
	
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

	/**
	 * 跳转详情页面
	 * project_bid
	 * JiaQi
	 */
	public String toProject_bid(){
		
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		if(project.getBidUser().getId() == getAdmins().getId()){
			ActionContext.getContext().getValueStack().set("isUser",true);
		}else{
			ActionContext.getContext().getValueStack().set("isUser",false);
		}
		return "project_bid";
	}
	
	/**
	 * 提交工作
	 */
	public String projectBid(){
		Bid bid = bidService.getById(getModel().getId());
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
	                	bid.setBidResultFile(getImageFileName().get(i)+".pdf");
	                	setFile1("0");
	                }else if(file2.equals("1")){
	                	bid.setBidTellFile(getImageFileName().get(i)+".pdf");
	                	setFile2("0");
	                }
	            }
	        }
		 } catch (Exception e) {
				e.printStackTrace();
		}
		bid.getProject().setIsBid(2);
		bid.setBidCompany(getModel().getBidCompany());
		bid.setBidNum(getModel().getBidNum());
		bid.setOwner(getModel().getOwner());
		bid.setOpenBidDate(getModel().getOpenBidDate());
		bidService.update(bid);
		projectService.update(bid.getProject());
		ActionContext.getContext().getValueStack().set("msg","*提交成功！");
		
//		生成消息
		Date date =new Date();
		Message message =new Message();
		message.setMessageDate(date);
		message.setMessageValue("招投标提交工作！");
		message.setUser(bid.getProject().getCreatUser());
		messageService.save(message);
		
		return "project_biding";
	}
	
	/**
	 * 跳转详情
	 * @return
	 */
	public String toShow_bid(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "details_bid";
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
