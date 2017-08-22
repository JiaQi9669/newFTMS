package cn.zqrc.fts2.pro.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.Insp;
import cn.zqrc.fts2.pro.vo.Message;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.tools.DateUtil;

/**
 * 商检
 * @author JiaQi
 *
 */
public class InspAction extends BaseAction<Insp>{
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
	 * guo
	 * 进入项目商检的详情页
	 */
		public String toProjectInsp(){
			Project project = projectService.getById(getModel().getId());
			ActionContext.getContext().getValueStack().set("project", project);
			return "projectInsp";
		}
		
		public String toShowProjectInsp(){
			Project project = projectService.getById(getModel().getId());
			ActionContext.getContext().getValueStack().set("project", project);
			return "showprojectInsp";
		}
		/**
		 * guo
		 * 提交商检的信息
		 */
		public String projectInsp(){
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
			                	project.getInsp().setInspFile(getImageFileName().get(i)+".pdf");
			                	setFile1("0");
			                }else if(file2.equals("1")){
			                	project.getInsp().setOverInsp(getImageFileName().get(i)+".pdf");
			                	setFile2("0");
			                }else if(file3.equals("1")){
			                	project.getInsp().setInspCertFile(getImageFileName().get(i)+".pdf");
			                	setFile3("0");
			                }
			            }
			        }
				 } catch (Exception e) {
						e.printStackTrace();
				}
			
			project.getInsp().setInspectionNum(getModel().getInspectionNum());
			project.getInsp().setInspMech(getModel().getInspMech());
			project.getInsp().setInspDate(getModel().getInspDate());
			project.getInsp().setInspStyle(getModel().getInspStyle());
			
			project.getInsp().setInstallName(getModel().getInstallName());
			project.getInsp().setInstallPhone(getModel().getInstallPhone());
			project.getInsp().setPlaceName(getModel().getPlaceName());
			project.getInsp().setPlacePhone(getModel().getPlacePhone());
			
			project.getInsp().setInspMoney(getModel().getInspMoney());
			project.getInsp().setInfo(getModel().getInfo());
			
			inspService.update(project.getInsp());
			project.setIsInsp(2);
			projectService.update(project);
			ActionContext.getContext().getValueStack().set("msg", "*提交成功");
			
//			生成消息
			Date date =new Date();
			Message message =new Message();
			message.setMessageDate(date);
			message.setMessageValue("商检人提交工作！");
			message.setUser(project.getCreatUser());
			messageService.save(message);
			
			return "projectInsping";
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
