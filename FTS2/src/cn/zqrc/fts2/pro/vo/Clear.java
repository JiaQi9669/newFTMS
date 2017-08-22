package cn.zqrc.fts2.pro.vo;

import java.util.Date;

/**
 * 清关人
 * @author JiaQi
 *
 */
public class Clear {
	private Integer id;
	
	private String clearPort;//清关口岸
	private Date inGoodDate;//预计到货日期
	private String transportStyle;//运输方式
	private String tradeTerm;//贸易术语
	private String tradingNation;//贸易国
	private String originNation;//原产国
	private String wagyBillNum;//运单号
	private Date taxesDate;//交税日期
	private String tariff;//关税
	private String valueAdded;//增值税
	private String exciseTax;//消费税
	private String allTax;//合计税额
	private Date comPortDate;//会海关票日期
	private String tariffFile;//关税税票 文件
	private String valueAddedFile;//增值税税票  文件
	private String exciseTaxFile;//消费税税票 文件
	private Date portDate;//报关日期
	private String inPortNum;//报关单号
	private String portNum;//海关编码
	private String inPortDoubleHead;//报关单位双抬头
	private String inPortFile;//报关单 文件
	private String clearMoney;//清关费用
	private String warehouseMoney;//仓储费
	private String info;
	private Date reurnDate;//回报关单日期
	
	private Project project;//关联一个项目
	
	public Date getReurnDate() {
		return reurnDate;
	}


	public void setReurnDate(Date reurnDate) {
		this.reurnDate = reurnDate;
	}


	
	public Clear() {
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


	public String getClearPort() {
		return clearPort;
	}


	public void setClearPort(String clearPort) {
		this.clearPort = clearPort;
	}


	public Date getInGoodDate() {
		return inGoodDate;
	}


	public void setInGoodDate(Date inGoodDate) {
		this.inGoodDate = inGoodDate;
	}


	public String getTransportStyle() {
		return transportStyle;
	}


	public void setTransportStyle(String transportStyle) {
		this.transportStyle = transportStyle;
	}


	public String getTradeTerm() {
		return tradeTerm;
	}


	public void setTradeTerm(String tradeTerm) {
		this.tradeTerm = tradeTerm;
	}


	public String getTradingNation() {
		return tradingNation;
	}


	public void setTradingNation(String tradingNation) {
		this.tradingNation = tradingNation;
	}


	public String getOriginNation() {
		return originNation;
	}


	public void setOriginNation(String originNation) {
		this.originNation = originNation;
	}


	public String getWagyBillNum() {
		return wagyBillNum;
	}


	public void setWagyBillNum(String wagyBillNum) {
		this.wagyBillNum = wagyBillNum;
	}


	public Date getTaxesDate() {
		return taxesDate;
	}


	public void setTaxesDate(Date taxesDate) {
		this.taxesDate = taxesDate;
	}


	public String getTariff() {
		return tariff;
	}


	public void setTariff(String tariff) {
		this.tariff = tariff;
	}


	public String getValueAdded() {
		return valueAdded;
	}


	public void setValueAdded(String valueAdded) {
		this.valueAdded = valueAdded;
	}


	public String getExciseTax() {
		return exciseTax;
	}


	public void setExciseTax(String exciseTax) {
		this.exciseTax = exciseTax;
	}


	public String getAllTax() {
		return allTax;
	}


	public void setAllTax(String allTax) {
		this.allTax = allTax;
	}


	public Date getComPortDate() {
		return comPortDate;
	}


	public void setComPortDate(Date comPortDate) {
		this.comPortDate = comPortDate;
	}


	public String getTariffFile() {
		return tariffFile;
	}


	public void setTariffFile(String tariffFile) {
		this.tariffFile = tariffFile;
	}


	public String getValueAddedFile() {
		return valueAddedFile;
	}


	public void setValueAddedFile(String valueAddedFile) {
		this.valueAddedFile = valueAddedFile;
	}


	public String getExciseTaxFile() {
		return exciseTaxFile;
	}


	public void setExciseTaxFile(String exciseTaxFile) {
		this.exciseTaxFile = exciseTaxFile;
	}


	public Date getPortDate() {
		return portDate;
	}


	public void setPortDate(Date portDate) {
		this.portDate = portDate;
	}


	public String getInPortNum() {
		return inPortNum;
	}


	public void setInPortNum(String inPortNum) {
		this.inPortNum = inPortNum;
	}


	public String getPortNum() {
		return portNum;
	}


	public void setPortNum(String portNum) {
		this.portNum = portNum;
	}


	public String getInPortDoubleHead() {
		return inPortDoubleHead;
	}


	public void setInPortDoubleHead(String inPortDoubleHead) {
		this.inPortDoubleHead = inPortDoubleHead;
	}


	public String getInPortFile() {
		return inPortFile;
	}


	public void setInPortFile(String inPortFile) {
		this.inPortFile = inPortFile;
	}


	public String getClearMoney() {
		return clearMoney;
	}


	public void setClearMoney(String clearMoney) {
		this.clearMoney = clearMoney;
	}


	public String getWarehouseMoney() {
		return warehouseMoney;
	}


	public void setWarehouseMoney(String warehouseMoney) {
		this.warehouseMoney = warehouseMoney;
	}


	public Project getProject() {
		return project;
	}


	public void setProject(Project project) {
		this.project = project;
	}
	
}
