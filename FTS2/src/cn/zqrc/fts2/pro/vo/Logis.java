package cn.zqrc.fts2.pro.vo;

import java.util.Date;

/**
 * 物流
 * @author JiaQi
 *
 */
public class Logis {
	
	private Integer id;
	
	private Date outGoodsTime;//提货时间
	private String outGoodsName;//提货联系人
	private String outGoodsPhone;//提货人电话
	private String outGoodsCarId;//提货人车牌号
	private String outGoodsIDCard;//提货人身份证号
	private String logisName;//运输联系人
	private String logisPhone;//运输电话
	private String logisCarId;//运输人车牌号
	private String logisIDCard;//运输身份证号
	private String logisPartName;//物流负责人单位名称
	private String logisPartAdress;//物流负责人地址
	private String logisPartPersonName;//物流负责联系人
	private String logisPartPhone;//物流负责人电话
	private String inGoodsName;//收货联系人
	private String inGoodsPhone;//收货人电话
	private String inGoodsPartName;//收货人单位名
	private String inGoodsAdress;//收货人地址
	private String inLogisFile;//国内运输  文件
	private String inGoodsFile;//入库单
	private Date inGoodsTime;//入库时间
	private String warehouseName;//仓库联系人
	private String warehousePhone;//仓库联系电话
	private String outGoodsFile;//出库单  文件
	private String warehouseAdress;//仓库地址
	private String phone;//联系电弧
	private String inWarehouseMoney;//国内仓库费用
	
//	出库时间  出库数量
	private Date outWareTime1;
	private String outWareNum1;
	private Date outWareTime2;
	private String outWareNum2;
	private Date outWareTime3;
	private String outWareNum3;
	private Date outWareTime4;
	private String outWareNum4;
	private Date outWareTime5;
	private String outWareNum5;
	
	private String info;
	
	private Project project;//关联一个项目

	public Logis() {
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

	public Date getOutGoodsTime() {
		return outGoodsTime;
	}

	public void setOutGoodsTime(Date outGoodsTime) {
		this.outGoodsTime = outGoodsTime;
	}

	public String getOutGoodsName() {
		return outGoodsName;
	}

	public void setOutGoodsName(String outGoodsName) {
		this.outGoodsName = outGoodsName;
	}

	public String getOutGoodsPhone() {
		return outGoodsPhone;
	}

	public void setOutGoodsPhone(String outGoodsPhone) {
		this.outGoodsPhone = outGoodsPhone;
	}

	public String getOutGoodsCarId() {
		return outGoodsCarId;
	}

	public void setOutGoodsCarId(String outGoodsCarId) {
		this.outGoodsCarId = outGoodsCarId;
	}

	public String getOutGoodsIDCard() {
		return outGoodsIDCard;
	}

	public void setOutGoodsIDCard(String outGoodsIDCard) {
		this.outGoodsIDCard = outGoodsIDCard;
	}

	public String getLogisName() {
		return logisName;
	}

	public void setLogisName(String logisName) {
		this.logisName = logisName;
	}

	public String getLogisPhone() {
		return logisPhone;
	}

	public void setLogisPhone(String logisPhone) {
		this.logisPhone = logisPhone;
	}

	public String getLogisCarId() {
		return logisCarId;
	}

	public void setLogisCarId(String logisCarId) {
		this.logisCarId = logisCarId;
	}

	public String getLogisIDCard() {
		return logisIDCard;
	}

	public void setLogisIDCard(String logisIDCard) {
		this.logisIDCard = logisIDCard;
	}

	public String getLogisPartName() {
		return logisPartName;
	}

	public void setLogisPartName(String logisPartName) {
		this.logisPartName = logisPartName;
	}

	public String getLogisPartAdress() {
		return logisPartAdress;
	}

	public void setLogisPartAdress(String logisPartAdress) {
		this.logisPartAdress = logisPartAdress;
	}

	public String getLogisPartPersonName() {
		return logisPartPersonName;
	}

	public void setLogisPartPersonName(String logisPartPersonName) {
		this.logisPartPersonName = logisPartPersonName;
	}

	public String getLogisPartPhone() {
		return logisPartPhone;
	}

	public void setLogisPartPhone(String logisPartPhone) {
		this.logisPartPhone = logisPartPhone;
	}

	public String getInGoodsName() {
		return inGoodsName;
	}

	public void setInGoodsName(String inGoodsName) {
		this.inGoodsName = inGoodsName;
	}

	public String getInGoodsPhone() {
		return inGoodsPhone;
	}

	public void setInGoodsPhone(String inGoodsPhone) {
		this.inGoodsPhone = inGoodsPhone;
	}

	public String getInGoodsPartName() {
		return inGoodsPartName;
	}

	public void setInGoodsPartName(String inGoodsPartName) {
		this.inGoodsPartName = inGoodsPartName;
	}

	public String getInGoodsAdress() {
		return inGoodsAdress;
	}

	public void setInGoodsAdress(String inGoodsAdress) {
		this.inGoodsAdress = inGoodsAdress;
	}

	public String getInLogisFile() {
		return inLogisFile;
	}

	public void setInLogisFile(String inLogisFile) {
		this.inLogisFile = inLogisFile;
	}

	public String getInGoodsFile() {
		return inGoodsFile;
	}

	public void setInGoodsFile(String inGoodsFile) {
		this.inGoodsFile = inGoodsFile;
	}

	public Date getInGoodsTime() {
		return inGoodsTime;
	}

	public void setInGoodsTime(Date inGoodsTime) {
		this.inGoodsTime = inGoodsTime;
	}

	public String getWarehouseName() {
		return warehouseName;
	}

	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}

	public String getWarehousePhone() {
		return warehousePhone;
	}

	public void setWarehousePhone(String warehousePhone) {
		this.warehousePhone = warehousePhone;
	}

	public String getOutGoodsFile() {
		return outGoodsFile;
	}

	public void setOutGoodsFile(String outGoodsFile) {
		this.outGoodsFile = outGoodsFile;
	}

	public String getWarehouseAdress() {
		return warehouseAdress;
	}

	public void setWarehouseAdress(String warehouseAdress) {
		this.warehouseAdress = warehouseAdress;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getInWarehouseMoney() {
		return inWarehouseMoney;
	}

	public void setInWarehouseMoney(String inWarehouseMoney) {
		this.inWarehouseMoney = inWarehouseMoney;
	}

	public Date getOutWareTime1() {
		return outWareTime1;
	}

	public void setOutWareTime1(Date outWareTime1) {
		this.outWareTime1 = outWareTime1;
	}

	public String getOutWareNum1() {
		return outWareNum1;
	}

	public void setOutWareNum1(String outWareNum1) {
		this.outWareNum1 = outWareNum1;
	}

	public Date getOutWareTime2() {
		return outWareTime2;
	}

	public void setOutWareTime2(Date outWareTime2) {
		this.outWareTime2 = outWareTime2;
	}

	public String getOutWareNum2() {
		return outWareNum2;
	}

	public void setOutWareNum2(String outWareNum2) {
		this.outWareNum2 = outWareNum2;
	}

	public Date getOutWareTime3() {
		return outWareTime3;
	}

	public void setOutWareTime3(Date outWareTime3) {
		this.outWareTime3 = outWareTime3;
	}

	public String getOutWareNum3() {
		return outWareNum3;
	}

	public void setOutWareNum3(String outWareNum3) {
		this.outWareNum3 = outWareNum3;
	}

	public Date getOutWareTime4() {
		return outWareTime4;
	}

	public void setOutWareTime4(Date outWareTime4) {
		this.outWareTime4 = outWareTime4;
	}

	public String getOutWareNum4() {
		return outWareNum4;
	}

	public void setOutWareNum4(String outWareNum4) {
		this.outWareNum4 = outWareNum4;
	}

	public Date getOutWareTime5() {
		return outWareTime5;
	}

	public void setOutWareTime5(Date outWareTime5) {
		this.outWareTime5 = outWareTime5;
	}

	public String getOutWareNum5() {
		return outWareNum5;
	}

	public void setOutWareNum5(String outWareNum5) {
		this.outWareNum5 = outWareNum5;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
	
	
}
