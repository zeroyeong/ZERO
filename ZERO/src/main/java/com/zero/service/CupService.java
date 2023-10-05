package com.zero.service;

import java.util.List;

import com.zero.domain.Branch;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;

public interface CupService {

	List<CupTeam> getCupTeamList();
	
	CupTeam getCupTeamOne(int team_no);
	
	List<CupPlayer> getCupPlayerList();
	
	List<CupSchedule> getCupScheduleList();
	
	void setNewCupTeam(CupTeam cupTeam); 
	
	void setNewCupPlayer(CupPlayer cupPlayer);
	
	List<CupPlayer> getPlayerWithTeamList();
	
	List<CupPlayer> getTeamDetail(int team_no);
	
	List<CupSchedule> getTeamSchedule(int team_no);
	
	List<CupPlayer> getPlayerRanking();
	
	List<Branch> getBranchList();
	
	void updateCupTeam(CupTeam cup_team);
	
	void deletePlayer(int player_no);

	void setCupSchedule(CupSchedule cup_schedule);
}
