package com.zero.domain;

public class CupSchedule {

	private int schedule_no;
	private String schedule_location;
	private String schedule_date;
	private String schedule_time;
	private String schedule_home_goal;
	private String schedule_away_goal;
	private int branch_no;
	private CupTeam cup_home_team;
	private CupTeam cup_away_team;
	private CupMatchDetail detail;
	
	public CupSchedule() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CupSchedule(int schedule_no, String schedule_location, String schedule_date, String schedule_time,
			String schedule_home_goal, String schedule_away_goal, int branch_no, CupTeam cup_home_team,
			CupTeam cup_away_team, CupMatchDetail detail) {
		super();
		this.schedule_no = schedule_no;
		this.schedule_location = schedule_location;
		this.schedule_date = schedule_date;
		this.schedule_time = schedule_time;
		this.schedule_home_goal = schedule_home_goal;
		this.schedule_away_goal = schedule_away_goal;
		this.branch_no = branch_no;
		this.cup_home_team = cup_home_team;
		this.cup_away_team = cup_away_team;
		this.detail = detail;
	}

	public int getSchedule_no() {
		return schedule_no;
	}

	public void setSchedule_no(int schedule_no) {
		this.schedule_no = schedule_no;
	}

	public String getSchedule_location() {
		return schedule_location;
	}

	public void setSchedule_location(String schedule_location) {
		this.schedule_location = schedule_location;
	}

	public String getSchedule_date() {
		return schedule_date;
	}

	public void setSchedule_date(String schedule_date) {
		this.schedule_date = schedule_date;
	}

	public String getSchedule_time() {
		return schedule_time;
	}

	public void setSchedule_time(String schedule_time) {
		this.schedule_time = schedule_time;
	}

	public String getschedule_home_goal() {
		return schedule_home_goal;
	}

	public void setschedule_home_goal(String schedule_home_goal) {
		this.schedule_home_goal = schedule_home_goal;
	}

	public String getSchedule_away_goal() {
		return schedule_away_goal;
	}

	public void setSchedule_away_goal(String schedule_away_goal) {
		this.schedule_away_goal = schedule_away_goal;
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
