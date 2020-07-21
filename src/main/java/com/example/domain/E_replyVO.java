package com.example.domain;

import java.sql.Date;

public class E_replyVO{

	int r_no;
	int e_no;
	String replyer;
	String content;
	Date date;
	
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public int getE_no() {
		return e_no;
	}
	public void setE_no(int e_no) {
		this.e_no = e_no;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "E_replyVO [r_no=" + r_no + ", e_no=" + e_no + ", replyer=" + replyer + ", content=" + content
				+ ", date=" + date + "]";
	}
}
