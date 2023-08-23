package com.User;


import java.sql.Timestamp;   
import java.util.Date;
   
public class Post {
	private int id;
	private String title;
	private String content;
	private Date Pdate;
	private UserDetails user;
	
	
	
	public Post(int id, String title, String content, Date pdate, UserDetails user) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		Pdate = pdate;
		this.user = user;
	}
	
	
	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public Date getPdate() {
		return Pdate;
	}
	public void setPdate(Date Pdate) {
		this.Pdate = Pdate;
		
		 	
		
		
	}
	
	
	

}
