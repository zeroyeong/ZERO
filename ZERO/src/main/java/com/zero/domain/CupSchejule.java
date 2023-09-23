package com.zero.domain;

public class CupSchejule {

	private int schejule_no;
	private String schejule_location;
	private String schejule_date;
	private int branch_no;
	
	private CupTeam cup_home_team;
	private CupTeam cup_away_team;
	private CupMatchDetail detail;
	
	public CupSchejule() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CupSchejule(int schejule_no, String schejule_location, String schejule_date, int branch_no,
			CupTeam cup_home_team, CupTeam cup_away_team, CupMatchDetail detail) {
		super();
		this.schejule_no = schejule_no;
		this.schejule_location = schejule_location;
		this.schejule_date = schejule_date;
		this.branch_no = branch_no;
		this.cup_home_team = cup_home_team;
		this.cup_away_team = cup_away_team;
		this.detail = detail;
	}

	public int getSchejule_no() {
		return schejule_no;
	}

	public void setSchejule_no(int schejule_no) {
		this.schejule_no = schejule_no;
	}

	public String getSchejule_location() {
		return schejule_location;
	}

	public void setSchejule_location(String schejule_location) {
		this.schejule_location = schejule_location;
	}

	public String getSchejule_date() {
		return schejule_date;
	}

	public void setSchejule_date(String schejule_date) {
		this.schejule_date = schejule_date;
	}

	public int getBranch_no() {
		return branch_no;
	}

	public void setBranch_no(int branch_no) {
		this.branch_no = branch_no;
	}

	public CupTeam getCup_home_team() {
		return cup_home_team;
	}

	public void setCup_home_team(CupTeam cup_home_team) {
		this.cup_home_team = cup_home_team;
	}

	public CupTeam getCup_away_team() {
		return cup_away_team;
	}

	public void setCup_away_team(CupTeam cup_away_team) {
		this.cup_away_team = cup_away_team;
	}

	public CupMatchDetail getDetail() {
		return detail;
	}

	public void setDetail(CupMatchDetail detail) {
		this.detail = detail;
	}
	
	
}
