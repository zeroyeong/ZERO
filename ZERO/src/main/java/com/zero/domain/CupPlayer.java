package com.zero.domain;

public class CupPlayer {

	private int playerNo;
	private String playerName;
	private String playerPhoto;
	private String playerGoal;
	private String playerYellowCard;
	private String playerRedCard;	
		
	public CupPlayer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CupPlayer(int playerNo, String playerName, String playerPhoto, String playerGoal, String playerYellowCard,
			String playerRedCard) {
		super();
		this.playerNo = playerNo;
		this.playerName = playerName;
		this.playerPhoto = playerPhoto;
		this.playerGoal = playerGoal;
		this.playerYellowCard = playerYellowCard;
		this.playerRedCard = playerRedCard;
	}

	public int getPlayerNo() {
		return playerNo;
	}


	public void setPlayerNo(int playerNo) {
		this.playerNo = playerNo;
	}


	public String getPlayerName() {
		return playerName;
	}


	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}


	public String getPlayerPhoto() {
		return playerPhoto;
	}


	public void setPlayerPhoto(String playerPhoto) {
		this.playerPhoto = playerPhoto;
	}


	public String getPlayerGoal() {
		return playerGoal;
	}


	public void setPlayerGoal(String playerGoal) {
		this.playerGoal = playerGoal;
	}


	public String getPlayerYellowCard() {
		return playerYellowCard;
	}


	public void setPlayerYellowCard(String playerYellowCard) {
		this.playerYellowCard = playerYellowCard;
	}


	public String getPlayerRedCard() {
		return playerRedCard;
	}


	public void setPlayerRedCard(String playerRedCard) {
		this.playerRedCard = playerRedCard;
	}
}
