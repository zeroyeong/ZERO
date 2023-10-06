package com.zero.domain;

import org.springframework.web.multipart.MultipartFile;

public class CupPlayer {

	private int player_no;
	private String player_name;
	private String player_photo;
	private int player_games;
	private int player_goal;
	private int player_yellow_card;
	private int player_red_card;	
	private int team_no;	
	private CupTeam cup_team;
	private MultipartFile photo_file;
	
	public CupPlayer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CupPlayer(int player_no, String player_name, String player_photo, int player_games, int player_goal,
			int player_yellow_card, int player_red_card, int team_no, CupTeam cup_team, MultipartFile photo_file) {
		super();
		this.player_no = player_no;
		this.player_name = player_name;
		this.player_photo = player_photo;
		this.player_games = player_games;
		this.player_goal = player_goal;
		this.player_yellow_card = player_yellow_card;
		this.player_red_card = player_red_card;
		this.team_no = team_no;
		this.cup_team = cup_team;
		this.photo_file = photo_file;
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

	public int getPlayer_games() {
		return player_games;
	}

	public void setPlayer_games(int player_games) {
		this.player_games = player_games;
	}

	public int getPlayer_goal() {
		return player_goal;
	}

	public void setPlayer_goal(int player_goal) {
		this.player_goal = player_goal;
	}

	public int getPlayer_yellow_card() {
		return player_yellow_card;
	}

	public void setPlayer_yellow_card(int player_yellow_card) {
		this.player_yellow_card = player_yellow_card;
	}

	public int getPlayer_red_card() {
		return player_red_card;
	}

	public void setPlayer_red_card(int player_red_card) {
		this.player_red_card = player_red_card;
	}

	public int getTeam_no() {
		return team_no;
	}

	public void setTeam_no(int team_no) {
		this.team_no = team_no;
	}

	public CupTeam getCup_team() {
		return cup_team;
	}

	public void setCup_team(CupTeam cup_team) {
		this.cup_team = cup_team;
	}

	public MultipartFile getPhoto_file() {
		return photo_file;
	}

	public void setPhoto_file(MultipartFile photo_file) {
		this.photo_file = photo_file;
	}

}
