package com.zero.domain;

public class CupMatchDetail {

	private int detail_no;
	private String detail_home_goal;
	private String detail_away_goal;
	private String detail_home_yellow_card;
	private String detail_away_yellow_card;
	private String detail_home_red_card;
	private String detail_away_red_card;

	public CupMatchDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CupMatchDetail(int detail_no, String detail_home_goal, String detail_away_goal,
			String detail_home_yellow_card, String detail_away_yellow_card, String detail_home_red_card,
			String detail_away_red_card) {
		super();
		this.detail_no = detail_no;
		this.detail_home_goal = detail_home_goal;
		this.detail_away_goal = detail_away_goal;
		this.detail_home_yellow_card = detail_home_yellow_card;
		this.detail_away_yellow_card = detail_away_yellow_card;
		this.detail_home_red_card = detail_home_red_card;
		this.detail_away_red_card = detail_away_red_card;
	}
	
	public int getDetail_no() {
		return detail_no;
	}
	public void setDetail_no(int detail_no) {
		this.detail_no = detail_no;
	}
	public String getDetail_home_goal() {
		return detail_home_goal;
	}
	public void setDetail_home_goal(String detail_home_goal) {
		this.detail_home_goal = detail_home_goal;
	}
	public String getDetail_away_goal() {
		return detail_away_goal;
	}
	public void setDetail_away_goal(String detail_away_goal) {
		this.detail_away_goal = detail_away_goal;
	}
	public String getDetail_home_yellow_card() {
		return detail_home_yellow_card;
	}
	public void setDetail_home_yellow_card(String detail_home_yellow_card) {
		this.detail_home_yellow_card = detail_home_yellow_card;
	}
	public String getDetail_away_yellow_card() {
		return detail_away_yellow_card;
	}
	public void setDetail_away_yellow_card(String detail_away_yellow_card) {
		this.detail_away_yellow_card = detail_away_yellow_card;
	}
	public String getDetail_home_red_card() {
		return detail_home_red_card;
	}
	public void setDetail_home_red_card(String detail_home_red_card) {
		this.detail_home_red_card = detail_home_red_card;
	}
	public String getDetail_away_red_card() {
		return detail_away_red_card;
	}
	public void setDetail_away_red_card(String detail_away_red_card) {
		this.detail_away_red_card = detail_away_red_card;
	}
}
