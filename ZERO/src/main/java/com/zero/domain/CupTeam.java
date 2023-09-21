package com.zero.domain;

public class CupTeam {

	private int team_no; 				//pk
	private String team_name;    		//column
	private String team_leader;  		//column
	private String team_phone;  			//column 
	private String team_mail;			//column
	private String team_uniform_home; 	//column
	private String team_uniform_away; 	//column
	private String team_emblem;			//column
	private String team_password;		//column
	private String team_password_check;	
	private String team_code;			//column
	private String team_member_cnt;			
	private String team_reg_year;			//column
	private int branch_no; 				//fk
	private int score_no;	 			//fk
	
	public CupTeam() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CupTeam(int team_no, String team_name, String team_leader, String team_phone, String team_mail,
			String team_uniform_home, String team_uniform_away, String team_emblem, String team_password,
			String team_password_check, String team_code, String team_member_cnt, String team_reg_year, int branch_no,
			int score_no) {
		super();
		this.team_no = team_no;
		this.team_name = team_name;
		this.team_leader = team_leader;
		this.team_phone = team_phone;
		this.team_mail = team_mail;
		this.team_uniform_home = team_uniform_home;
		this.team_uniform_away = team_uniform_away;
		this.team_emblem = team_emblem;
		this.team_password = team_password;
		this.team_password_check = team_password_check;
		this.team_code = team_code;
		this.team_member_cnt = team_member_cnt;
		this.team_reg_year = team_reg_year;
		this.branch_no = branch_no;
		this.score_no = score_no;
	}

	public int getTeam_no() {
		return team_no;
	}

	public void setTeam_no(int team_no) {
		this.team_no = team_no;
	}

	public String getTeam_name() {
		return team_name;
	}

	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}

	public String getTeam_leader() {
		return team_leader;
	}

	public void setTeam_leader(String team_leader) {
		this.team_leader = team_leader;
	}

	public String getTeam_phone() {
		return team_phone;
	}

	public void setTeam_phone(String team_phone) {
		this.team_phone = team_phone;
	}

	public String getTeam_mail() {
		return team_mail;
	}

	public void setTeam_mail(String team_mail) {
		this.team_mail = team_mail;
	}

	public String getTeam_uniform_home() {
		return team_uniform_home;
	}

	public void setTeam_uniform_home(String team_uniform_home) {
		this.team_uniform_home = team_uniform_home;
	}

	public String getTeam_uniform_away() {
		return team_uniform_away;
	}

	public void setTeam_uniform_away(String team_uniform_away) {
		this.team_uniform_away = team_uniform_away;
	}

	public String getTeam_emblem() {
		return team_emblem;
	}

	public void setTeam_emblem(String team_emblem) {
		this.team_emblem = team_emblem;
	}

	public String getTeam_password() {
		return team_password;
	}

	public void setTeam_password(String team_password) {
		this.team_password = team_password;
	}

	public String getTeam_password_check() {
		return team_password_check;
	}

	public void setTeam_password_check(String team_password_check) {
		this.team_password_check = team_password_check;
	}

	public String getTeam_code() {
		return team_code;
	}

	public void setTeam_code(String team_code) {
		this.team_code = team_code;
	}

	public String getTeam_member_cnt() {
		return team_member_cnt;
	}

	public void setTeam_member_cnt(String team_member_cnt) {
		this.team_member_cnt = team_member_cnt;
	}

	public String getTeam_reg_year() {
		return team_reg_year;
	}

	public void setTeam_reg_year(String team_reg_year) {
		this.team_reg_year = team_reg_year;
	}

	public int getBranch_no() {
		return branch_no;
	}

	public void setBranch_no(int branch_no) {
		this.branch_no = branch_no;
	}

	public int getScore_no() {
		return score_no;
	}

	public void setScore_no(int score_no) {
		this.score_no = score_no;
	}
}
