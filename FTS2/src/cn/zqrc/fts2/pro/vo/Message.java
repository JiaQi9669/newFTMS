package cn.zqrc.fts2.pro.vo;

import java.util.Date;

//消息
public class Message {
	private Integer id;
	private Date messageDate;
	private String messageValue;
	private User user;
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getMessageDate() {
		return messageDate;
	}
	public void setMessageDate(Date messageDate) {
		this.messageDate = messageDate;
	}
	public String getMessageValue() {
		return messageValue;
	}
	public void setMessageValue(String messageValue) {
		this.messageValue = messageValue;
	}
	
}
