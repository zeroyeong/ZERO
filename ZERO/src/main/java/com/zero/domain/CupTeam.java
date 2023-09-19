package com.zero.domain;

public class CupTeam {

	private int teamNo; 				//pk
	private String teamName;    		//column
	private String teamLeader;  		//column
	private String teamPhone;  			//column 
	private String teamMail;			//column
	private String teamUniformHome; 	//column
	private String teamUniformAway; 	//column
	private String teamEmblem;			//column
	private String teamPassWord;		//column
	private String teamPassWordCheck;	
	private String teamCode;			//column
	private String teamMemberCnt;			
	private String teamRegYear;			//column
	private int branchNo; 				//fk
	private int playerNo; 				//fk
	private int scoreNo;	 			//fk
	
	public CupTeam() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CupTeam(int teamNo, String teamName, String teamLeader, String teamPhone, String teamMail,
			String teamUniformHome, String teamUniformAway, String teamEmblem, String teamPassWord,
			String teamPassWordCheck, String teamCode, String teamMemberCnt, String teamRegYear, int branchNo,
			int playerNo, int scoreNo) {
		super();
		this.teamNo = teamNo;
		this.teamName = teamName;
		this.teamLeader = teamLeader;
		this.teamPhone = teamPhone;
		this.teamMail = teamMail;
		this.teamUniformHome = teamUniformHome;
		this.teamUniformAway = teamUniformAway;
		this.teamEmblem = teamEmblem;
		this.teamPassWord = teamPassWord;
		this.teamPassWordCheck = teamPassWordCheck;
		this.teamCode = teamCode;
		this.teamMemberCnt = teamMemberCnt;
		this.teamRegYear = teamRegYear;
		this.branchNo = branchNo;
		this.playerNo = playerNo;
		this.scoreNo = scoreNo;
	}

	public int getTeamNo() {
		return teamNo;
	}
	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getTeamLeader() {
		return teamLeader;
	}
	public void setTeamLeader(String teamLeader) {
		this.teamLeader = teamLeader;
	}
	public String getTeamPhone() {
		return teamPhone;
	}
	public void setTeamPhone(String teamPhone) {
		this.teamPhone = teamPhone;
	}
	public String getTeamMail() {
		return teamMail;
	}
	public void setTeamMail(String teamMail) {
		this.teamMail = teamMail;
	}
	public String getTeamUniformHome() {
		return teamUniformHome;
	}
	public void setTeamUniformHome(String teamUniformHome) {
		this.teamUniformHome = teamUniformHome;
	}
	public String getTeamUniformAway() {
		return teamUniformAway;
	}
	public void setTeamUniformAway(String teamUniformAway) {
		this.teamUniformAway = teamUniformAway;
	}
	public String getTeamEmblem() {
		return teamEmblem;
	}
	public void setTeamEmblem(String teamEmblem) {
		this.teamEmblem = teamEmblem;
	}
	public String getTeamPassWord() {
		return teamPassWord;
	}
	public void setTeamPassWord(String teamPassWord) {
		this.teamPassWord = teamPassWord;
	}
	public String getTeamPassWordCheck() {
		return teamPassWordCheck;
	}
	public void setTeamPassWordCheck(String teamPassWordCheck) {
		this.teamPassWordCheck = teamPassWordCheck;
	}
	public String getTeamCode() {
		return teamCode;
	}
	public void setTeamCode(String teamCode) {
		this.teamCode = teamCode;
	}
	public String getTeamMemberCnt() {
		return teamMemberCnt;
	}
	public void setTeamMemberCnt(String teamMemberCnt) {
		this.teamMemberCnt = teamMemberCnt;
	}
	public String getTeamRegYear() {
		return teamRegYear;
	}
	public void setTeamRegYear(String teamRegYear) {
		this.teamRegYear = teamRegYear;
	}
	public int getBranchNo() {
		return branchNo;
	}
	public void setBranchNo(int branchNo) {
		this.branchNo = branchNo;
	}
	public int getPlayerNo() {
		return playerNo;
	}
	public void setPlayerNo(int playerNo) {
		this.playerNo = playerNo;
	}
	public int getScoreNo() {
		return scoreNo;
	}
	public void setScoreNo(int scoreNo) {
		this.scoreNo = scoreNo;
	}
}
