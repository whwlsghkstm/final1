package com.example.domain;

import java.util.Date;

public class ExhibitionVO {

	int e_no;
	String title;
	String content;
	String date;
	String image;
	String addr;
	String addr_detail;
	

	public String getAddr_detail() {
		return addr_detail;
	}
	public void setAddr_detail(String addr_detail) {
		this.addr_detail = addr_detail;
	}
	public int getE_no() {
		return e_no;
	}
	public void setE_no(int e_no) {
		this.e_no = e_no;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	@Override
	public String toString() {
		return "ExhibitionVO [e_no=" + e_no + ", title=" + title + ", content=" + content + ", date=" + date
				+ ", image=" + image + ", addr=" + addr + ", addr_detail=" + addr_detail + "]";
	}
	
}
