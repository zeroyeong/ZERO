package com.zero.domain;

public class CupPlayer {

	private int player_no;
	private String player_name;
	private String player_photo;
	private String player_goal;
	private String player_yellow_card;
	private String player_red_card;	
		
	private CupTeam cup_team;
	
	public CupPlayer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CupPlayer(int player_no, String player_name, String player_photo, String player_goal,
			String player_yellow_card, String player_red_card, CupTeam cup_team) {
		super();
		this.player_no = player_no;
		this.player_name = player_name;
		this.player_photo = player_photo;
		this.player_goal = player_goal;
		this.player_yellow_card = player_yellow_card;
		this.player_red_card = player_red_card;
		this.cup_team = cup_team;
	}

	public int getPlayer_no() {
		return player_no;
	}

	public void setPlayer_no(int player_no) {
		this.player_no = player_no;
	}

	public String getPlayer_name() {
		return player_name;
	}

	public void setPlayer_name(String player_name) {
		this.player_name = player_name;
	}

	public String getPlayer_photo() {
		return player_photo;
	}

	public void setPlayer_photo(String player_photo) {
		this.player_photo = player_photo;
	}

	public String getPlayer_goal() {
		return player_goal;
	}

	public void setPlayer_goal(String player_goal) {
		this.player_goal = player_goal;
	}

	public String getPlayer_yellow_card() {
		return player_yellow_card;
	}

	public void setPlayer_yellow_card(String player_yellow_card) {
		this.player_yellow_card = player_yellow_card;
	}

	public String getPlayer_red_card() {
		return player_red_card;
	}

	public void setPlayer_red_card(String player_red_card) {
		this.player_red_card = player_red_card;
	}

	public CupTeam getCup_team() {
		return cup_team;
	}

	public void setCup_team(CupTeam cup_team) {
		this.cup_team = cup_team;
	}	
}
