package com.zero.domain;

import lombok.Data;

@Data
public class Member {
	private int mem_no;      	//회원 순서 PK
	private String mem_id;   	//회원 Id
	private String mem_pw;   	//회원 PW  
	private String mem_name; 	//회원 이름
	private String mem_phone;	//회원 휴대폰번호
	
	private String googleId; 	//구글 아이디
	private String naverId;  	//네이버 아이디
	private String email;		//이메일 
	private String nickname;	//닉네임
	
	//구글/네이버/이메일/닉네임 칼럼추가

}
