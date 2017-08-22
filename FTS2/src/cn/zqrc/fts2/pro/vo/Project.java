package cn.zqrc.fts2.pro.vo;

import java.util.Date;

/**
 * 项目
 * @author JiaQi
 *
 */
public class Project {
	private Integer id;
	private String name;
	private String outNum;//外贸合同号
	private String inNum;//内部标号
	private String supplier;//供货商
	private String finalUser;//最终用户
	private String payStyle;//付款方式
	private String projectNum;//数量
	private String models;//型号
	private String agent;//代理商
	private String productName;//品名
	private String outMoney;//外贸金额,付款金额及币种
	private String agentMoney;//代理商价格
	private String sellMoney;//销售价格
	private String exRatio;//汇比
	private String rate;//利率
	private String info;
	
	private String otherMoney;//其他费用
	private String intMoney;//国际运费
	private String outFiles;//外贸合同
	private String inFiles;//内贸合同
	
	private String canHaveMoney;//应收金额
	private String allCanHaveMoney;//收款合计
	private String noPayMoney;//尾款金额
	
	private Date haveDate1;//收款日期
	private String haveMoney1;//收款金额
	private Date haveDate2;//收款日期
	private String haveMoney2;//收款金额
	private Date haveDate3;//收款日期
	private String haveMoney3;//收款金额
	private Date haveDate4;//收款日期
	private String haveMoney4;//收款金额
	private Date haveDate5;//收款日期
	private String haveMoney5;//收款金额
	private Date haveDate6;//收款日期
	private String haveMoney6;//收款金额
	private Date haveDate7;//收款日期
	private String haveMoney7;//收款金额
	private Date haveDate8;//收款日期
	private String haveMoney8;//收款金额
	private Date haveDate9;//收款日期
	private String haveMoney9;//收款金额
	private Date haveDate10;//收款日期
	private String haveMoney10;//收款金额
//	开票
	private Date inDate1;//收款日期
	private String inMoney1;//收款金额
	private Date inDate2;//收款日期
	private String inMoney2;//收款金额
	private Date inDate3;//收款日期
	private String inMoney3;//收款金额
	private Date inDate4;//收款日期
	private String inMoney4;//收款金额
	private Date inDate5;//收款日期
	private String inMoney5;//收款金额
	private Date inDate6;//收款日期
	private String inMoney6;//收款金额
	private Date inDate7;//收款日期
	private String inMoney7;//收款金额
	private Date inDate8;//收款日期
	private String inMoney8;//收款金额
	private Date inDate9;//收款日期
	private String inMoney9;//收款金额
	private Date inDate10;//收款日期
	private String inMoney10;//收款金额
	
	private Date creatTime;//创建时间
	private Integer isOver;//是否完结  1没完结  2完结
	
	private Brand brand;//关联一个品牌
	private User user;//项目负责人
	private User bankUser;//银行负责人
	private User clearUser;//清关人
	private User bidUser;//招标人
	private User businesUser;//商务人
	private User insuUser;//保险人
	private User logisUser;//物流人
	private User inspUser;//商检人
	private User creatUser;//项目立项人
	
	private String totalMoney;//费用合计
	private String monkeyInfo;//开票备注
	
	//	是否提交工作   1执行  2 完结
	private Integer isBank;
	private Integer isClear;
	private Integer isBid;
	private Integer isBusines;
	private Integer isInsu;
	private Integer isLogis;
	private Integer isInsp;
	
	private Suppliers suppliers;//国内采购模块
	
	private Brank brank;//银行模块
	private Clear clear;//清关模块
	private Bid bid;//招标模块
	private Busines busines;//机电证
	private Insu insu;//保险
	private Logis logis;//物流
	private Insp insp;//商检
	
	
	
	public Project() {
	}
	
	public String getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(String totalMoney) {
		this.totalMoney = totalMoney;
	}

	public String getMonkeyInfo() {
		return monkeyInfo;
	}

	public void setMonkeyInfo(String monkeyInfo) {
		this.monkeyInfo = monkeyInfo;
	}

	public Date getInDate1() {
		return inDate1;
	}

	public void setInDate1(Date inDate1) {
		this.inDate1 = inDate1;
	}

	public String getInMoney1() {
		return inMoney1;
	}

	public void setInMoney1(String inMoney1) {
		this.inMoney1 = inMoney1;
	}

	public Date getInDate2() {
		return inDate2;
	}

	public void setInDate2(Date inDate2) {
		this.inDate2 = inDate2;
	}

	public String getInMoney2() {
		return inMoney2;
	}

	public void setInMoney2(String inMoney2) {
		this.inMoney2 = inMoney2;
	}

	public Date getInDate3() {
		return inDate3;
	}

	public void setInDate3(Date inDate3) {
		this.inDate3 = inDate3;
	}

	public String getInMoney3() {
		return inMoney3;
	}

	public void setInMoney3(String inMoney3) {
		this.inMoney3 = inMoney3;
	}

	public Date getInDate4() {
		return inDate4;
	}

	public void setInDate4(Date inDate4) {
		this.inDate4 = inDate4;
	}

	public String getInMoney4() {
		return inMoney4;
	}

	public void setInMoney4(String inMoney4) {
		this.inMoney4 = inMoney4;
	}

	public Date getInDate5() {
		return inDate5;
	}

	public void setInDate5(Date inDate5) {
		this.inDate5 = inDate5;
	}

	public String getInMoney5() {
		return inMoney5;
	}

	public void setInMoney5(String inMoney5) {
		this.inMoney5 = inMoney5;
	}

	public Date getInDate6() {
		return inDate6;
	}

	public void setInDate6(Date inDate6) {
		this.inDate6 = inDate6;
	}

	public String getInMoney6() {
		return inMoney6;
	}

	public void setInMoney6(String inMoney6) {
		this.inMoney6 = inMoney6;
	}

	public Date getInDate7() {
		return inDate7;
	}

	public void setInDate7(Date inDate7) {
		this.inDate7 = inDate7;
	}

	public String getInMoney7() {
		return inMoney7;
	}

	public void setInMoney7(String inMoney7) {
		this.inMoney7 = inMoney7;
	}

	public Date getInDate8() {
		return inDate8;
	}

	public void setInDate8(Date inDate8) {
		this.inDate8 = inDate8;
	}

	public String getInMoney8() {
		return inMoney8;
	}

	public void setInMoney8(String inMoney8) {
		this.inMoney8 = inMoney8;
	}

	public Date getInDate9() {
		return inDate9;
	}

	public void setInDate9(Date inDate9) {
		this.inDate9 = inDate9;
	}

	public String getInMoney9() {
		return inMoney9;
	}

	public void setInMoney9(String inMoney9) {
		this.inMoney9 = inMoney9;
	}

	public Date getInDate10() {
		return inDate10;
	}

	public void setInDate10(Date inDate10) {
		this.inDate10 = inDate10;
	}

	public String getInMoney10() {
		return inMoney10;
	}

	public void setInMoney10(String inMoney10) {
		this.inMoney10 = inMoney10;
	}
	
	public User getCreatUser() {
		return creatUser;
	}

	public void setCreatUser(User creatUser) {
		this.creatUser = creatUser;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOutNum() {
		return outNum;
	}
	public void setOutNum(String outNum) {
		this.outNum = outNum;
	}
	public String getInNum() {
		return inNum;
	}
	public void setInNum(String inNum) {
		this.inNum = inNum;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getFinalUser() {
		return finalUser;
	}
	public void setFinalUser(String finalUser) {
		this.finalUser = finalUser;
	}
	public String getPayStyle() {
		return payStyle;
	}
	public void setPayStyle(String payStyle) {
		this.payStyle = payStyle;
	}
	public String getProjectNum() {
		return projectNum;
	}
	public void setProjectNum(String projectNum) {
		this.projectNum = projectNum;
	}
	public String getModels() {
		return models;
	}
	public void setModels(String models) {
		this.models = models;
	}
	public String getAgent() {
		return agent;
	}
	public void setAgent(String agent) {
		this.agent = agent;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getOutMoney() {
		return outMoney;
	}
	public void setOutMoney(String outMoney) {
		this.outMoney = outMoney;
	}
	public String getAgentMoney() {
		return agentMoney;
	}
	public void setAgentMoney(String agentMoney) {
		this.agentMoney = agentMoney;
	}
	public String getSellMoney() {
		return sellMoney;
	}
	public void setSellMoney(String sellMoney) {
		this.sellMoney = sellMoney;
	}
	public String getExRatio() {
		return exRatio;
	}
	public void setExRatio(String exRatio) {
		this.exRatio = exRatio;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getOtherMoney() {
		return otherMoney;
	}
	public void setOtherMoney(String otherMoney) {
		this.otherMoney = otherMoney;
	}
	public String getIntMoney() {
		return intMoney;
	}
	public void setIntMoney(String intMoney) {
		this.intMoney = intMoney;
	}
	public String getOutFiles() {
		return outFiles;
	}
	public void setOutFiles(String outFiles) {
		this.outFiles = outFiles;
	}
	public String getInFiles() {
		return inFiles;
	}
	public void setInFiles(String inFiles) {
		this.inFiles = inFiles;
	}
	public String getCanHaveMoney() {
		return canHaveMoney;
	}
	public void setCanHaveMoney(String canHaveMoney) {
		this.canHaveMoney = canHaveMoney;
	}
	public String getAllCanHaveMoney() {
		return allCanHaveMoney;
	}
	public void setAllCanHaveMoney(String allCanHaveMoney) {
		this.allCanHaveMoney = allCanHaveMoney;
	}
	public String getNoPayMoney() {
		return noPayMoney;
	}
	public void setNoPayMoney(String noPayMoney) {
		this.noPayMoney = noPayMoney;
	}
	public Date getHaveDate1() {
		return haveDate1;
	}
	public void setHaveDate1(Date haveDate1) {
		this.haveDate1 = haveDate1;
	}
	public String getHaveMoney1() {
		return haveMoney1;
	}
	public void setHaveMoney1(String haveMoney1) {
		this.haveMoney1 = haveMoney1;
	}
	public Date getHaveDate2() {
		return haveDate2;
	}
	public void setHaveDate2(Date haveDate2) {
		this.haveDate2 = haveDate2;
	}
	public String getHaveMoney2() {
		return haveMoney2;
	}
	public void setHaveMoney2(String haveMoney2) {
		this.haveMoney2 = haveMoney2;
	}
	public Date getHaveDate3() {
		return haveDate3;
	}
	public void setHaveDate3(Date haveDate3) {
		this.haveDate3 = haveDate3;
	}
	public String getHaveMoney3() {
		return haveMoney3;
	}
	public void setHaveMoney3(String haveMoney3) {
		this.haveMoney3 = haveMoney3;
	}
	public Date getHaveDate4() {
		return haveDate4;
	}
	public void setHaveDate4(Date haveDate4) {
		this.haveDate4 = haveDate4;
	}
	public String getHaveMoney4() {
		return haveMoney4;
	}
	public void setHaveMoney4(String haveMoney4) {
		this.haveMoney4 = haveMoney4;
	}
	public Date getHaveDate5() {
		return haveDate5;
	}
	public void setHaveDate5(Date haveDate5) {
		this.haveDate5 = haveDate5;
	}
	public String getHaveMoney5() {
		return haveMoney5;
	}
	public void setHaveMoney5(String haveMoney5) {
		this.haveMoney5 = haveMoney5;
	}
	public Date getHaveDate6() {
		return haveDate6;
	}
	public void setHaveDate6(Date haveDate6) {
		this.haveDate6 = haveDate6;
	}
	public String getHaveMoney6() {
		return haveMoney6;
	}
	public void setHaveMoney6(String haveMoney6) {
		this.haveMoney6 = haveMoney6;
	}
	public Date getHaveDate7() {
		return haveDate7;
	}
	public void setHaveDate7(Date haveDate7) {
		this.haveDate7 = haveDate7;
	}
	public String getHaveMoney7() {
		return haveMoney7;
	}
	public void setHaveMoney7(String haveMoney7) {
		this.haveMoney7 = haveMoney7;
	}
	public Date getHaveDate8() {
		return haveDate8;
	}
	public void setHaveDate8(Date haveDate8) {
		this.haveDate8 = haveDate8;
	}
	public String getHaveMoney8() {
		return haveMoney8;
	}
	public void setHaveMoney8(String haveMoney8) {
		this.haveMoney8 = haveMoney8;
	}
	public Date getHaveDate9() {
		return haveDate9;
	}
	public void setHaveDate9(Date haveDate9) {
		this.haveDate9 = haveDate9;
	}
	public String getHaveMoney9() {
		return haveMoney9;
	}
	public void setHaveMoney9(String haveMoney9) {
		this.haveMoney9 = haveMoney9;
	}
	public Date getHaveDate10() {
		return haveDate10;
	}
	public void setHaveDate10(Date haveDate10) {
		this.haveDate10 = haveDate10;
	}
	public String getHaveMoney10() {
		return haveMoney10;
	}
	public void setHaveMoney10(String haveMoney10) {
		this.haveMoney10 = haveMoney10;
	}
	public Date getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}
	public Integer getIsOver() {
		return isOver;
	}
	public void setIsOver(Integer isOver) {
		this.isOver = isOver;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public User getBankUser() {
		return bankUser;
	}
	public void setBankUser(User bankUser) {
		this.bankUser = bankUser;
	}
	public User getClearUser() {
		return clearUser;
	}
	public void setClearUser(User clearUser) {
		this.clearUser = clearUser;
	}
	public User getBidUser() {
		return bidUser;
	}
	public void setBidUser(User bidUser) {
		this.bidUser = bidUser;
	}
	public User getBusinesUser() {
		return businesUser;
	}
	public void setBusinesUser(User businesUser) {
		this.businesUser = businesUser;
	}
	public User getInsuUser() {
		return insuUser;
	}
	public void setInsuUser(User insuUser) {
		this.insuUser = insuUser;
	}
	public User getLogisUser() {
		return logisUser;
	}
	public void setLogisUser(User logisUser) {
		this.logisUser = logisUser;
	}
	public User getInspUser() {
		return inspUser;
	}
	public void setInspUser(User inspUser) {
		this.inspUser = inspUser;
	}
	public Integer getIsBank() {
		return isBank;
	}
	public void setIsBank(Integer isBank) {
		this.isBank = isBank;
	}
	public Integer getIsClear() {
		return isClear;
	}
	public void setIsClear(Integer isClear) {
		this.isClear = isClear;
	}
	public Integer getIsBid() {
		return isBid;
	}
	public void setIsBid(Integer isBid) {
		this.isBid = isBid;
	}
	public Integer getIsBusines() {
		return isBusines;
	}
	public void setIsBusines(Integer isBusines) {
		this.isBusines = isBusines;
	}
	public Integer getIsInsu() {
		return isInsu;
	}
	public void setIsInsu(Integer isInsu) {
		this.isInsu = isInsu;
	}
	public Integer getIsLogis() {
		return isLogis;
	}
	public void setIsLogis(Integer isLogis) {
		this.isLogis = isLogis;
	}
	public Integer getIsInsp() {
		return isInsp;
	}
	public void setIsInsp(Integer isInsp) {
		this.isInsp = isInsp;
	}
	public Suppliers getSuppliers() {
		return suppliers;
	}
	public void setSuppliers(Suppliers suppliers) {
		this.suppliers = suppliers;
	}
	public Brank getBrank() {
		return brank;
	}
	public void setBrank(Brank brank) {
		this.brank = brank;
	}
	public Clear getClear() {
		return clear;
	}
	public void setClear(Clear clear) {
		this.clear = clear;
	}
	public Bid getBid() {
		return bid;
	}
	public void setBid(Bid bid) {
		this.bid = bid;
	}
	public Busines getBusines() {
		return busines;
	}
	public void setBusines(Busines busines) {
		this.busines = busines;
	}
	public Insu getInsu() {
		return insu;
	}
	public void setInsu(Insu insu) {
		this.insu = insu;
	}
	public Logis getLogis() {
		return logis;
	}
	public void setLogis(Logis logis) {
		this.logis = logis;
	}
	public Insp getInsp() {
		return insp;
	}
	public void setInsp(Insp insp) {
		this.insp = insp;
	}
	
}
