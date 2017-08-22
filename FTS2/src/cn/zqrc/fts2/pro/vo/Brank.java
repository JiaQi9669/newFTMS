package cn.zqrc.fts2.pro.vo;

import java.util.Date;

/**
 * 银行模块
 * @author JiaQi
 *
 */
public class Brank {
	private Integer id;
	
	private String TTFiles;//电汇电文 文件
	private String LCFiles;//信用证电文 文件
	private String RCFiles;//改证电文  文件
	
	private String CMoney;//开证手续费
	private String TTMoney1;//电汇手续费
	private String TTMoney2;//电汇手续费
	private String TTMoney3;//电汇手续费
	private String TTMoney4;//电汇手续费
	private String TTMoney5;//电汇手续费
	
public String getCMoney() {
		return CMoney;
	}
	public void setCMoney(String cMoney) {
		CMoney = cMoney;
	}
	public String getTTMoney1() {
		return TTMoney1;
	}
	public void setTTMoney1(String tTMoney1) {
		TTMoney1 = tTMoney1;
	}
	public String getTTMoney2() {
		return TTMoney2;
	}
	public void setTTMoney2(String tTMoney2) {
		TTMoney2 = tTMoney2;
	}
	public String getTTMoney3() {
		return TTMoney3;
	}
	public void setTTMoney3(String tTMoney3) {
		TTMoney3 = tTMoney3;
	}
	public String getTTMoney4() {
		return TTMoney4;
	}
	public void setTTMoney4(String tTMoney4) {
		TTMoney4 = tTMoney4;
	}
	public String getTTMoney5() {
		return TTMoney5;
	}
	public void setTTMoney5(String tTMoney5) {
		TTMoney5 = tTMoney5;
	}

	//	电汇
	private Date TTTime1;//电汇时间
	private String TTBrank1;//电汇银行
	private String outMoney1;//电汇外币币种金额
	private String TTRloe1;//汇率
	private String RMBMoney1;//折合人民币金额
	
	private Date TTTime2;//电汇时间
	private String TTBrank2;//电汇银行
	private String outMoney2;//电汇外币币种金额
	private String TTRloe2;//汇率
	private String RMBMoney2;//折合人民币金额
	
	private Date TTTime3;//电汇时间
	private String TTBrank3;//电汇银行
	private String outMoney3;//电汇外币币种金额
	private String TTRloe3;//汇率
	private String RMBMoney3;//折合人民币金额
	
	private Date TTTime4;//电汇时间
	private String TTBrank4;//电汇银行
	private String outMoney4;//电汇外币币种金额
	private String TTRloe4;//汇率
	private String RMBMoney4;//折合人民币金额
	
	private Date TTTime5;//电汇时间
	private String TTBrank5;//电汇银行
	private String outMoney5;//电汇外币币种金额
	private String TTRloe5;//汇率
	private String RMBMoney5;//折合人民币金额
	
	private String AllRMBMoney;//全部折合人民币金额
	
	private Date LCTime;//开证时间
	private String LCBrank;//开征银行
	private String LCNum;//信用证号
	private String LCMoneyStyle;//信用证币种金额
	private Date CChangeTime;//改证时间
	private Date outTime;//付汇时间
	private String outRole;//付汇汇率
	private String outMoney;//付汇外币金额
	private String outRMBMoney;//折合人民币金额
	private String LCinfo;//押汇情况备注
	
	private Project project;//关联一个项目
	
	private String info;
	
	public Brank() {
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

	public String getTTFiles() {
		return TTFiles;
	}

	public void setTTFiles(String tTFiles) {
		TTFiles = tTFiles;
	}

	public String getLCFiles() {
		return LCFiles;
	}

	public void setLCFiles(String lCFiles) {
		LCFiles = lCFiles;
	}

	public String getRCFiles() {
		return RCFiles;
	}

	public void setRCFiles(String rCFiles) {
		RCFiles = rCFiles;
	}

	public Date getTTTime1() {
		return TTTime1;
	}

	public void setTTTime1(Date tTTime1) {
		TTTime1 = tTTime1;
	}

	public String getTTBrank1() {
		return TTBrank1;
	}

	public void setTTBrank1(String tTBrank1) {
		TTBrank1 = tTBrank1;
	}

	public String getOutMoney1() {
		return outMoney1;
	}

	public void setOutMoney1(String outMoney1) {
		this.outMoney1 = outMoney1;
	}

	public String getTTRloe1() {
		return TTRloe1;
	}

	public void setTTRloe1(String tTRloe1) {
		TTRloe1 = tTRloe1;
	}

	public String getRMBMoney1() {
		return RMBMoney1;
	}

	public void setRMBMoney1(String rMBMoney1) {
		RMBMoney1 = rMBMoney1;
	}

	public Date getTTTime2() {
		return TTTime2;
	}

	public void setTTTime2(Date tTTime2) {
		TTTime2 = tTTime2;
	}

	public String getTTBrank2() {
		return TTBrank2;
	}

	public void setTTBrank2(String tTBrank2) {
		TTBrank2 = tTBrank2;
	}

	public String getOutMoney2() {
		return outMoney2;
	}

	public void setOutMoney2(String outMoney2) {
		this.outMoney2 = outMoney2;
	}

	public String getTTRloe2() {
		return TTRloe2;
	}

	public void setTTRloe2(String tTRloe2) {
		TTRloe2 = tTRloe2;
	}

	public String getRMBMoney2() {
		return RMBMoney2;
	}

	public void setRMBMoney2(String rMBMoney2) {
		RMBMoney2 = rMBMoney2;
	}

	public Date getTTTime3() {
		return TTTime3;
	}

	public void setTTTime3(Date tTTime3) {
		TTTime3 = tTTime3;
	}

	public String getTTBrank3() {
		return TTBrank3;
	}

	public void setTTBrank3(String tTBrank3) {
		TTBrank3 = tTBrank3;
	}

	public String getOutMoney3() {
		return outMoney3;
	}

	public void setOutMoney3(String outMoney3) {
		this.outMoney3 = outMoney3;
	}

	public String getTTRloe3() {
		return TTRloe3;
	}

	public void setTTRloe3(String tTRloe3) {
		TTRloe3 = tTRloe3;
	}

	public String getRMBMoney3() {
		return RMBMoney3;
	}

	public void setRMBMoney3(String rMBMoney3) {
		RMBMoney3 = rMBMoney3;
	}

	public Date getTTTime4() {
		return TTTime4;
	}

	public void setTTTime4(Date tTTime4) {
		TTTime4 = tTTime4;
	}

	public String getTTBrank4() {
		return TTBrank4;
	}

	public void setTTBrank4(String tTBrank4) {
		TTBrank4 = tTBrank4;
	}

	public String getOutMoney4() {
		return outMoney4;
	}

	public void setOutMoney4(String outMoney4) {
		this.outMoney4 = outMoney4;
	}

	public String getTTRloe4() {
		return TTRloe4;
	}

	public void setTTRloe4(String tTRloe4) {
		TTRloe4 = tTRloe4;
	}

	public String getRMBMoney4() {
		return RMBMoney4;
	}

	public void setRMBMoney4(String rMBMoney4) {
		RMBMoney4 = rMBMoney4;
	}

	public Date getTTTime5() {
		return TTTime5;
	}

	public void setTTTime5(Date tTTime5) {
		TTTime5 = tTTime5;
	}

	public String getTTBrank5() {
		return TTBrank5;
	}

	public void setTTBrank5(String tTBrank5) {
		TTBrank5 = tTBrank5;
	}

	public String getOutMoney5() {
		return outMoney5;
	}

	public void setOutMoney5(String outMoney5) {
		this.outMoney5 = outMoney5;
	}

	public String getTTRloe5() {
		return TTRloe5;
	}

	public void setTTRloe5(String tTRloe5) {
		TTRloe5 = tTRloe5;
	}

	public String getRMBMoney5() {
		return RMBMoney5;
	}

	public void setRMBMoney5(String rMBMoney5) {
		RMBMoney5 = rMBMoney5;
	}

	public String getAllRMBMoney() {
		return AllRMBMoney;
	}

	public void setAllRMBMoney(String allRMBMoney) {
		AllRMBMoney = allRMBMoney;
	}

	public Date getLCTime() {
		return LCTime;
	}

	public void setLCTime(Date lCTime) {
		LCTime = lCTime;
	}

	public String getLCBrank() {
		return LCBrank;
	}

	public void setLCBrank(String lCBrank) {
		LCBrank = lCBrank;
	}

	public String getLCNum() {
		return LCNum;
	}

	public void setLCNum(String lCNum) {
		LCNum = lCNum;
	}

	public String getLCMoneyStyle() {
		return LCMoneyStyle;
	}

	public void setLCMoneyStyle(String lCMoneyStyle) {
		LCMoneyStyle = lCMoneyStyle;
	}

	public Date getCChangeTime() {
		return CChangeTime;
	}

	public void setCChangeTime(Date cChangeTime) {
		CChangeTime = cChangeTime;
	}

	public Date getOutTime() {
		return outTime;
	}

	public void setOutTime(Date outTime) {
		this.outTime = outTime;
	}

	public String getOutRole() {
		return outRole;
	}

	public void setOutRole(String outRole) {
		this.outRole = outRole;
	}

	public String getOutMoney() {
		return outMoney;
	}

	public void setOutMoney(String outMoney) {
		this.outMoney = outMoney;
	}

	public String getOutRMBMoney() {
		return outRMBMoney;
	}

	public void setOutRMBMoney(String outRMBMoney) {
		this.outRMBMoney = outRMBMoney;
	}

	public String getLCinfo() {
		return LCinfo;
	}

	public void setLCinfo(String lCinfo) {
		LCinfo = lCinfo;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
}
