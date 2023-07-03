package com.sist.vo;
import java.util.*;
/*
 *   MNO                                       NOT NULL VARCHAR2(20)
	 PWD                                       NOT NULL VARCHAR2(20)
	 NAME                                      NOT NULL VARCHAR2(51)
	 NICKNAME                                  NOT NULL VARCHAR2(20)
	 SEX                                                VARCHAR2(6)
	 BIRTHDAY                                  NOT NULL VARCHAR2(20)
	 EMAIL                                              VARCHAR2(120)
	 POST                                      NOT NULL VARCHAR2(20)
	 ADDR1                                     NOT NULL VARCHAR2(300)
	 ADDR2                                              VARCHAR2(300)
	 ADMIN                                              CHAR(1)
 */
public class MemberVO {
	private String mno,pwd,name,nickname,sex,birthday,email,post,addr1,addr2,admin,msg;

	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}

	
}
