package com.zero.domain;

import lombok.Data;

@Data
public class Member {
	private int mem_no;      	//ȸ�� ���� PK
	private String mem_id;   	//ȸ�� Id
	private String mem_pw;   	//ȸ�� PW  
	private String mem_name; 	//ȸ�� �̸�
	private String mem_phone;	//ȸ�� �޴�����ȣ
	
	private String googleId; 	//���� ���̵�
	private String naverId;  	//���̹� ���̵�
	private String email;		//�̸��� 
	private String nickname;	//�г���
	
	//����/���̹�/�̸���/�г��� Į���߰�

}
