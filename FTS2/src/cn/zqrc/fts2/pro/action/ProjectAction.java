package cn.zqrc.fts2.pro.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionContext;

import cn.zqrc.fts2.base.BaseAction;
import cn.zqrc.fts2.pro.vo.Bid;
import cn.zqrc.fts2.pro.vo.Brand;
import cn.zqrc.fts2.pro.vo.Brank;
import cn.zqrc.fts2.pro.vo.Busines;
import cn.zqrc.fts2.pro.vo.Clear;
import cn.zqrc.fts2.pro.vo.Insp;
import cn.zqrc.fts2.pro.vo.Insu;
import cn.zqrc.fts2.pro.vo.Logis;
import cn.zqrc.fts2.pro.vo.Project;
import cn.zqrc.fts2.pro.vo.Suppliers;
import cn.zqrc.fts2.tools.DateUtil;
/**
 * 项目
 * @author JiaQi
 *
 */
public class ProjectAction extends BaseAction<Project>{
	private List<File> image; // 上传的文件
	private List<String> imageFileName; // 文件名称
	private List<String> imageContentType; // 文件类型
	private String savePath;

	private Integer bankUserId;
	private Integer bidUserId;
	private Integer businesUserId;
	private Integer clearUserId;
	private Integer inspUserId;
	private Integer insuUserId;
	private Integer logisUserId;

	private String file1;
	private String file2;
	private String file3;
	private String file4;
	private String file5;
	private String file6;
	private String file7;
	private String file8;
	private String file9;
	private String file10;
	private String file11;
	private String file12;
	private String file13;
	private String file14;
	private String file15;
	private String file16;
	private String file17;
	private String file18;
	private String file19;
	private String file20;
	private String file21;
	private String file22;


	public Integer getBankUserId() {
		return bankUserId;
	}
	public void setBankUserId(Integer bankUserId) {
		this.bankUserId = bankUserId;
	}
	public String getFile4() {
		return file4;
	}
	public void setFile4(String file4) {
		this.file4 = file4;
	}
	
	public String getFile5() {
		return file5;
	}
	public void setFile5(String file5) {
		this.file5 = file5;
	}
	public String getFile6() {
		return file6;
	}
	public void setFile6(String file6) {
		this.file6 = file6;
	}
	public String getFile7() {
		return file7;
	}
	public void setFile7(String file7) {
		this.file7 = file7;
	}
	public String getFile8() {
		return file8;
	}
	public void setFile8(String file8) {
		this.file8 = file8;
	}
	public String getFile9() {
		return file9;
	}
	public void setFile9(String file9) {
		this.file9 = file9;
	}
	public String getFile10() {
		return file10;
	}
	public void setFile10(String file10) {
		this.file10 = file10;
	}
	public String getFile11() {
		return file11;
	}
	public void setFile11(String file11) {
		this.file11 = file11;
	}
	public String getFile12() {
		return file12;
	}
	public void setFile12(String file12) {
		this.file12 = file12;
	}
	public String getFile13() {
		return file13;
	}
	public void setFile13(String file13) {
		this.file13 = file13;
	}
	public String getFile14() {
		return file14;
	}
	public void setFile14(String file14) {
		this.file14 = file14;
	}
	public String getFile15() {
		return file15;
	}
	public void setFile15(String file15) {
		this.file15 = file15;
	}
	public String getFile16() {
		return file16;
	}
	public void setFile16(String file16) {
		this.file16 = file16;
	}
	public String getFile17() {
		return file17;
	}
	public void setFile17(String file17) {
		this.file17 = file17;
	}
	public String getFile18() {
		return file18;
	}
	public void setFile18(String file18) {
		this.file18 = file18;
	}
	public String getFile19() {
		return file19;
	}
	public void setFile19(String file19) {
		this.file19 = file19;
	}
	public String getFile20() {
		return file20;
	}
	public void setFile20(String file20) {
		this.file20 = file20;
	}
	public String getFile21() {
		return file21;
	}
	public void setFile21(String file21) {
		this.file21 = file21;
	}
	public String getFile22() {
		return file22;
	}
	public void setFile22(String file22) {
		this.file22 = file22;
	}
	public Integer getBidUserId() {
		return bidUserId;
	}
	public void setBidUserId(Integer bidUserId) {
		this.bidUserId = bidUserId;
	}
	public Integer getBusinesUserId() {
		return businesUserId;
	}
	public void setBusinesUserId(Integer businesUserId) {
		this.businesUserId = businesUserId;
	}
	public Integer getClearUserId() {
		return clearUserId;
	}
	public void setClearUserId(Integer clearUserId) {
		this.clearUserId = clearUserId;
	}
	public Integer getInspUserId() {
		return inspUserId;
	}
	public void setInspUserId(Integer inspUserId) {
		this.inspUserId = inspUserId;
	}
	public Integer getInsuUserId() {
		return insuUserId;
	}
	public void setInsuUserId(Integer insuUserId) {
		this.insuUserId = insuUserId;
	}
	public Integer getLogisUserId() {
		return logisUserId;
	}
	public void setLogisUserId(Integer logisUserId) {
		this.logisUserId = logisUserId;
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
	/**
	 * 跳转立项界面、
	 * 获取品牌Id
	 * JiaQi
	 */
	public String toCreatProject(){
		ActionContext.getContext().getValueStack().set("id",getModel().getId());
		ActionContext.getContext().getValueStack().set("users", userService.findAll());
		return "creatProject";
	}


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
	 * 项目立项
	 * JiaQi
	 */
	public String creatProject(){

		Project project = new Project();
		project.setProductName(getModel().getProductName());
		project.setInNum(getModel().getInNum());
		project.setOutNum(getModel().getOutNum());
		project.setModels(getModel().getModels());
		project.setProjectNum(getModel().getProjectNum());
		project.setOutMoney(getModel().getOutMoney());
		project.setFinalUser(getModel().getFinalUser());

		project.setBankUser(userService.getById(getBankUserId()));
		project.setClearUser(userService.getById(getClearUserId()));
		project.setBidUser(userService.getById(getBidUserId()));
		project.setBusinesUser(userService.getById(getBusinesUserId()));
		project.setInspUser(userService.getById(getInspUserId()));
		project.setInsuUser(userService.getById(getInsuUserId()));
		project.setLogisUser(userService.getById(getLogisUserId()));

		project.setCreatUser(getAdmins());

		Brand brand = brandService.getById(getModel().getId());

		int num = brand.getProjectNum();

		brand.setProjectNum(num+1);

		project.setIsBank(1);
		project.setIsBid(1);
		project.setIsBusines(1);
		project.setIsClear(1);
		project.setIsInsp(1);
		project.setIsInsu(1);
		project.setIsLogis(1);
		project.setIsOver(1);
		project.setUser(brand.getUser());

		project.setCreatTime(new Date());
		project.setUser(brand.getUser());
		project.setBrand(brand);

		projectService.save(project);
		brandService.update(brand);

		Brank brank = new Brank();
		Clear clear = new Clear();
		Bid bid = new Bid();
		Busines busines = new Busines();
		Insu insu = new Insu();
		Logis logis = new Logis();
		Insp insp = new Insp();
		Suppliers suppliers = new Suppliers();

		suppliers.setProject(project);
		brank.setProject(project);
		clear.setProject(project);
		bid.setProject(project);;
		busines.setProject(project);;
		insu.setProject(project);;
		logis.setProject(project);;
		insp.setProject(project);

		suppliersService.save(suppliers);
		brankService.save(brank);
		clearService.save(clear);
		bidService.save(bid);
		businesService.save(busines);
		insuService.save(insu);
		logisService.save(logis);
		inspService.save(insp);

		ActionContext.getContext().getValueStack().set("msg", "*立项成功！");
		return "submitProject";
	}
	
	/**
	 * 
	 */
	public String toSubmitCreatProject(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "toSubmitCreatProject";
	}
	
	/**
	 * 跳转提交项目信息
	 */
	public String toSubmitProject(){
		Project project = projectService.getById(getModel().getId());
		ActionContext.getContext().getValueStack().set("project", project);
		return "toSubmitProject";
	}

	/**
	 * 跳项目提交工作
	 */
	public String submitProject(){

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
						project.setInFiles(getImageFileName().get(i)+".pdf");
						setFile1("0");
					}else if(file2.equals("1")){
						project.setOutFiles(getImageFileName().get(i)+".pdf");
						setFile2("0");
					}else if(file3.equals("1")){
						project.getBrank().setTTFiles(getImageFileName().get(i)+".pdf");//电汇电文
						setFile3("0");
					}else if(file4.equals("1")){
						project.getBrank().setLCFiles(getImageFileName().get(i)+".pdf");//信用证电文
						setFile4("0");
					}else if(file5.equals("1")){
						project.getBrank().setRCFiles(getImageFileName().get(i)+".pdf");//改证电文
						setFile5("0");
					}else if(file6.equals("1")){
						project.getBid().setBidResultFile(getImageFileName().get(i)+".pdf");//投标评标结果
						setFile6("0");
					}else if(file7.equals("1")){
						project.getBid().setBidTellFile(getImageFileName().get(i)+".pdf");//中标通知书
						setFile7("0");
					}else if(file8.equals("1")){
						project.getBusines().setInCanFile(getImageFileName().get(i)+".pdf");//
						setFile8("0");
					}else if(file9.equals("1")){
						project.getBusines().setInAutoFile(getImageFileName().get(i)+".pdf");//
						setFile9("0");
					}else if(file10.equals("1")){
						project.getClear().setInPortFile(getImageFileName().get(i)+".pdf");//
						setFile10("0");
					}else if(file11.equals("1")){
						project.getClear().setTariffFile(getImageFileName().get(i)+".pdf");//
						setFile11("0");
					}else if(file12.equals("1")){
						project.getClear().setValueAddedFile(getImageFileName().get(i)+".pdf");//
						setFile12("0");
					}else if(file13.equals("1")){
						project.getClear().setExciseTaxFile(getImageFileName().get(i)+".pdf");//
						setFile13("0");
					}else if(file14.equals("1")){
						project.getInsp().setInspFile(getImageFileName().get(i)+".pdf");//报检单
						setFile14("0");
					}else if(file15.equals("1")){
						project.getInsp().setOverInsp(getImageFileName().get(i)+".pdf");//验收报告
						setFile15("0");
					}else if(file16.equals("1")){
						project.getInsp().setInspCertFile(getImageFileName().get(i)+".pdf");//商检证
						setFile16("0");
					}else if(file17.equals("1")){
						project.getLogis().setInLogisFile(getImageFileName().get(i)+".pdf");//国内运输文件
						setFile17("0");
					}else if(file18.equals("1")){
						project.getLogis().setInGoodsFile(getImageFileName().get(i)+".pdf");//入库单
						setFile18("0");
					}else if(file19.equals("1")){
						project.getLogis().setOutGoodsFile(getImageFileName().get(i)+".pdf");//出库单
						setFile19("0");
					}else if(file20.equals("1")){
						project.getInsu().setInsuFile(getImageFileName().get(i)+".pdf");//保单
						setFile20("0");
					}else if(file21.equals("1")){
						project.getSuppliers().setCon1(getImageFileName().get(i)+".pdf");//合同
						setFile21("0");
					}else if(file22.equals("1")){
						project.getSuppliers().setCon2(getImageFileName().get(i)+".pdf");//合同
						setFile22("0");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		project.setInNum(getModel().getInNum());
		project.setOutNum(getModel().getOutNum());
		project.setSupplier(getModel().getSupplier());//供应商
		project.setAgent(getModel().getAgent());//代理商
		project.setFinalUser(getModel().getFinalUser());
		project.setProductName(getModel().getProductName());
		project.setModels(getModel().getModels());//型号
		project.setProjectNum(getModel().getProjectNum());//
		project.setPayStyle(getModel().getPayStyle());//
		project.setOutMoney(getModel().getOutMoney());//
		project.setExRatio(getModel().getExRatio());//汇比
		project.setRate(getModel().getRate());//
		project.setAgentMoney(getModel().getAgentMoney());//
		project.setSellMoney(getModel().getSellMoney());//
		project.setInfo(getModel().getInfo());//
		project.setHaveDate1(getModel().getHaveDate1());//收款日期
		project.setHaveDate2(getModel().getHaveDate2());//
		project.setHaveDate3(getModel().getHaveDate3());//
		project.setHaveDate4(getModel().getHaveDate4());//
		project.setHaveDate5(getModel().getHaveDate5());//
		project.setHaveDate6(getModel().getHaveDate6());//
		project.setHaveDate7(getModel().getHaveDate7());//
		project.setHaveDate8(getModel().getHaveDate8());//
		project.setHaveDate9(getModel().getHaveDate9());//
		project.setHaveDate10(getModel().getHaveDate10());//
		project.setHaveMoney1(getModel().getHaveMoney1());//收款金额
		project.setHaveMoney2(getModel().getHaveMoney2());//
		project.setHaveMoney3(getModel().getHaveMoney3());//
		project.setHaveMoney4(getModel().getHaveMoney4());//
		project.setHaveMoney5(getModel().getHaveMoney5());//
		project.setHaveMoney6(getModel().getHaveMoney6());//
		project.setHaveMoney7(getModel().getHaveMoney7());//
		project.setHaveMoney8(getModel().getHaveMoney8());//
		project.setHaveMoney9(getModel().getHaveMoney9());//
		project.setHaveMoney10(getModel().getHaveMoney10());//
		project.setAllCanHaveMoney(getModel().getAllCanHaveMoney());//
		project.setNoPayMoney(getModel().getNoPayMoney());//尾款合计
		project.setInDate1(getModel().getInDate1());//开票日期
		project.setInDate2(getModel().getInDate2());
		project.setInDate3(getModel().getInDate3());
		project.setInDate4(getModel().getInDate4());
		project.setInDate5(getModel().getInDate5());
		project.setInDate6(getModel().getInDate6());
		project.setInDate7(getModel().getInDate7());
		project.setInDate8(getModel().getInDate8());
		project.setInDate9(getModel().getInDate9());
		project.setInDate10(getModel().getInDate10());
		project.setInMoney1(getModel().getInMoney1());//开票金额
		project.setInMoney2(getModel().getInMoney2());
		project.setInMoney3(getModel().getInMoney3());
		project.setInMoney4(getModel().getInMoney4());
		project.setInMoney5(getModel().getInMoney5());
		project.setInMoney6(getModel().getInMoney6());
		project.setInMoney7(getModel().getInMoney7());
		project.setInMoney8(getModel().getInMoney8());
		project.setInMoney9(getModel().getInMoney9());
		project.setInMoney10(getModel().getInMoney10());
		project.setMonkeyInfo(getModel().getMonkeyInfo());
		
		//		 开票备注
		project.getBrank().setTTTime1(getModel().getBrank().getTTTime1());//电汇/信用证
		project.getBrank().setOutMoney1(getModel().getBrank().getOutMoney1());
		project.getBrank().setTTRloe1(getModel().getBrank().getTTRloe1());
		project.getBrank().setRMBMoney1(getModel().getBrank().getRMBMoney1());

		project.getBrank().setTTTime2(getModel().getBrank().getTTTime2());
		project.getBrank().setOutMoney2(getModel().getBrank().getOutMoney2());
		project.getBrank().setTTRloe2(getModel().getBrank().getTTRloe2());
		project.getBrank().setRMBMoney2(getModel().getBrank().getRMBMoney2());

		project.getBrank().setTTTime3(getModel().getBrank().getTTTime3());
		project.getBrank().setOutMoney3(getModel().getBrank().getOutMoney3());
		project.getBrank().setTTRloe3(getModel().getBrank().getTTRloe3());
		project.getBrank().setRMBMoney3(getModel().getBrank().getRMBMoney3());

		project.getBrank().setTTTime4(getModel().getBrank().getTTTime4());
		project.getBrank().setOutMoney4(getModel().getBrank().getOutMoney4());
		project.getBrank().setTTRloe4(getModel().getBrank().getTTRloe4());
		project.getBrank().setRMBMoney4(getModel().getBrank().getRMBMoney4());

		project.getBrank().setTTTime5(getModel().getBrank().getTTTime5());
		project.getBrank().setOutMoney5(getModel().getBrank().getOutMoney5());
		project.getBrank().setTTRloe5(getModel().getBrank().getTTRloe5());
		project.getBrank().setRMBMoney5(getModel().getBrank().getRMBMoney5());

		project.getBrank().setAllRMBMoney(getModel().getBrank().getAllRMBMoney());//折合人民币总额
		project.getBrank().setLCTime(getModel().getBrank().getLCTime());
		project.getBrank().setLCBrank(getModel().getBrank().getLCBrank());
		project.getBrank().setLCNum(getModel().getBrank().getLCNum());
		project.getBrank().setLCMoneyStyle(getModel().getBrank().getLCMoneyStyle());
		project.getBrank().setCChangeTime(getModel().getBrank().getCChangeTime());//改证时间
		project.getBrank().setOutTime(getModel().getBrank().getOutTime());
		project.getBrank().setOutRole(getModel().getBrank().getOutRole());
		project.getBrank().setOutMoney(getModel().getBrank().getOutMoney());
		project.getBrank().setOutRMBMoney(getModel().getBrank().getOutRMBMoney());
		project.getBrank().setLCinfo(getModel().getBrank().getLCinfo());

		//招投标
		project.getBid().setBidCompany(getModel().getBid().getBidCompany());
		project.getBid().setBidNum(getModel().getBid().getBidNum());
		project.getBid().setOwner(getModel().getBid().getOwner());
		project.getBid().setOpenBidDate(getModel().getBid().getOpenBidDate());
		project.getBid().setInfo(getModel().getBid().getInfo());

		//		 许可证
		project.getBusines().setInCanNum(getModel().getBusines().getInCanNum());
		project.getBusines().setInAutoNum(getModel().getBusines().getInAutoNum());
		project.getBusines().setInfo(getModel().getBusines().getInfo());

		//		清关
		project.getClear().setInGoodDate(getModel().getClear().getInGoodDate());
		project.getClear().setTransportStyle(getModel().getClear().getTransportStyle());
		project.getClear().setTradeTerm(getModel().getClear().getTradeTerm());
		project.getClear().setClearPort(getModel().getClear().getClearPort());
		project.getClear().setTradingNation(getModel().getClear().getTradingNation());
		project.getClear().setOriginNation(getModel().getClear().getOriginNation());
		project.getClear().setWagyBillNum(getModel().getClear().getWagyBillNum());
		project.getClear().setPortDate(getModel().getClear().getPortDate());
		project.getClear().setInPortNum(getModel().getClear().getInPortNum());
		project.getClear().setPortNum(getModel().getClear().getPortNum());
		project.getClear().setInPortDoubleHead(getModel().getClear().getInPortDoubleHead());
		project.getClear().setTaxesDate(getModel().getClear().getTaxesDate());
		project.getClear().setTariff(getModel().getClear().getTariff());
		project.getClear().setValueAdded(getModel().getClear().getValueAdded());
		project.getClear().setExciseTax(getModel().getClear().getExciseTax());
		project.getClear().setAllTax(getModel().getClear().getAllTax());
		project.getClear().setReurnDate(getModel().getClear().getReurnDate());
		project.getClear().setComPortDate(getModel().getClear().getComPortDate());
		project.getClear().setInfo(getModel().getClear().getInfo());

		//		 商检
		project.getInsp().setInspDate(getModel().getInsp().getInspDate());
		project.getInsp().setInspMech(getModel().getInsp().getInspMech());
		project.getInsp().setInspectionNum(getModel().getInsp().getInspectionNum());
		project.getInsp().setInspStyle(getModel().getInsp().getInspStyle());
		project.getInsp().setPlaceName(getModel().getInsp().getPlaceName());
		project.getInsp().setPlacePhone(getModel().getInsp().getPlacePhone());
		project.getInsp().setInstallName(getModel().getInsp().getInstallName());
		project.getInsp().setInstallPhone(getModel().getInsp().getInstallPhone());
		project.getInsp().setInfo(getModel().getInsp().getInfo());

		//		国内运输 
		project.getLogis().setOutGoodsTime(getModel().getLogis().getOutGoodsTime());
		project.getLogis().setOutGoodsName(getModel().getLogis().getOutGoodsName());
		project.getLogis().setOutGoodsPhone(getModel().getLogis().getOutGoodsPhone());
		project.getLogis().setOutGoodsCarId(getModel().getLogis().getOutGoodsCarId());
		project.getLogis().setOutGoodsIDCard(getModel().getLogis().getOutGoodsIDCard());
		project.getLogis().setLogisName(getModel().getLogis().getLogisName());
		project.getLogis().setLogisPhone(getModel().getLogis().getLogisPhone());
		project.getLogis().setLogisCarId(getModel().getLogis().getLogisCarId());
		project.getLogis().setLogisIDCard(getModel().getLogis().getLogisIDCard());
		project.getLogis().setLogisPartName(getModel().getLogis().getLogisPartName());
		project.getLogis().setLogisPartAdress(getModel().getLogis().getLogisPartAdress());
		project.getLogis().setLogisPartPersonName(getModel().getLogis().getLogisPartPersonName());
		project.getLogis().setLogisPartPhone(getModel().getLogis().getLogisPartPhone());
		project.getLogis().setInGoodsPartName(getModel().getLogis().getInGoodsPartName());
		project.getLogis().setInGoodsAdress(getModel().getLogis().getInGoodsAdress());
		project.getLogis().setInGoodsName(getModel().getLogis().getInGoodsName());
		project.getLogis().setInGoodsPhone(getModel().getLogis().getInGoodsPhone());
		project.getLogis().setInGoodsTime(getModel().getLogis().getInGoodsTime());
		project.getLogis().setWarehouseName(getModel().getLogis().getWarehouseName());
		project.getLogis().setWarehousePhone(getModel().getLogis().getWarehousePhone());
		project.getLogis().setWarehouseAdress(getModel().getLogis().getWarehouseAdress());
		project.getLogis().setOutWareTime1(getModel().getLogis().getOutWareTime1());
		project.getLogis().setOutWareNum1(getModel().getLogis().getOutWareNum1());
		project.getLogis().setOutWareTime2(getModel().getLogis().getOutWareTime2());
		project.getLogis().setOutWareNum2(getModel().getLogis().getOutWareNum2());
		project.getLogis().setOutWareTime3(getModel().getLogis().getOutWareTime3());
		project.getLogis().setOutWareNum3(getModel().getLogis().getOutWareNum3());
		project.getLogis().setOutWareTime4(getModel().getLogis().getOutWareTime4());
		project.getLogis().setOutWareNum4(getModel().getLogis().getOutWareNum4());
		project.getLogis().setOutWareTime5(getModel().getLogis().getOutWareTime5());
		project.getLogis().setOutWareNum5(getModel().getLogis().getOutWareNum5());
		project.getLogis().setInfo(getModel().getLogis().getInfo());

		//		 保险
		project.getInsu().setInsuPerson(getModel().getInsu().getInsuPerson());

		//		 国内采购
		project.getSuppliers().setInsupplier1(getModel().getSuppliers().getInsupplier1());
		project.getSuppliers().setConPerson1(getModel().getSuppliers().getConPerson1());
		project.getSuppliers().setGoodsName1(getModel().getSuppliers().getGoodsName1());
		project.getSuppliers().setGoodsNum1(getModel().getSuppliers().getGoodsNum1());
		project.getSuppliers().setConMoney1(getModel().getSuppliers().getConMoney1());
		project.getSuppliers().setConPayMoney1(getModel().getSuppliers().getConPayMoney1());
		project.getSuppliers().setComBillInfo1(getModel().getSuppliers().getComBillInfo1());
		project.getSuppliers().setInsupplier2(getModel().getSuppliers().getInsupplier2());
		project.getSuppliers().setConPerson2(getModel().getSuppliers().getConPerson2());
		project.getSuppliers().setGoodsName2(getModel().getSuppliers().getGoodsName2());
		project.getSuppliers().setGoodsNum2(getModel().getSuppliers().getGoodsNum2());
		project.getSuppliers().setConMoney2(getModel().getSuppliers().getConMoney2());
		project.getSuppliers().setConPayMoney2(getModel().getSuppliers().getConPayMoney2());
		project.getSuppliers().setComBillInfo2(getModel().getSuppliers().getComBillInfo2());
		project.getSuppliers().setAllInBuyMoney(getModel().getSuppliers().getAllInBuyMoney());

		//		 直接费用
		project.getBrank().setTTMoney1(getModel().getBrank().getTTMoney1());
		project.getBrank().setTTMoney2(getModel().getBrank().getTTMoney2());
		project.getBrank().setTTMoney3(getModel().getBrank().getTTMoney3());
		project.getBrank().setTTMoney4(getModel().getBrank().getTTMoney4());
		project.getBrank().setTTMoney5(getModel().getBrank().getTTMoney5());
		project.getBrank().setCMoney(getModel().getBrank().getCMoney());
		project.getClear().setClearMoney(getModel().getClear().getClearMoney());
		project.getClear().setWarehouseMoney(getModel().getClear().getWarehouseMoney());
		project.getInsp().setInspMoney(getModel().getInsp().getInspMoney());
		project.getBid().setBidMoney(getModel().getBid().getBidMoney());
		project.getInsu().setInsuMoney(getModel().getInsu().getInsuMoney());
		project.getLogis().setInWarehouseMoney(getModel().getLogis().getInWarehouseMoney());
		project.setOtherMoney(getModel().getOtherMoney());

		bidService.update(project.getBid());
		brankService.update(project.getBrank());
		brandService.update(project.getBrand());
		logisService.update(project.getLogis());
		inspService.update(project.getInsp());
		insuService.update(project.getInsu());
		businesService.update(project.getBusines());
		clearService.update(project.getClear());

		projectService.update(project);
		ActionContext.getContext().getValueStack().set("project", project);
		
		if(getAdmins().getRole()==2){
			return "submitProject";
		}else if(getAdmins().getRole() == 4){
			return "submitCrearProject";
		}
		return "submitProject";
	}

	//	 结项
	public String toOverProject(){
		Project project = projectService.getById(getModel().getId());
		project.setIsOver(2);
		projectService.update(project);
		ActionContext.getContext().getValueStack().set("project", project);
		if(getAdmins().getRole()==2){
			return "submitProject";
		}else if(getAdmins().getRole() == 4){
			return "submitCrearProject";
		}
		return "submitProject";
	}

}
