package com.zc.javaweb;

public class Customer {
	private int cno;
	private String cname;
	public Customer(int cno,String cname)
	{
		this.cno=cno;
		this.cname=cname;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	
	
}
