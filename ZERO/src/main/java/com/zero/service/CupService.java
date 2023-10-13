package com.zero.service;

import java.util.List;

import com.zero.domain.Branch;
import com.zero.domain.CupMatchDetail;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;

public interface CupService {

	List<CupTeam> getCupTeamList();
	
	CupTeam getCupTeamOne(int team_no);
	
	List<CupPlayer> getCupPlayerList();
	
	List<CupSchedule> getCupScheduleList();
	
	void setNewCupTeam(CupTeam cupTeam); 
	
	int getCupTeamByCupTeamNo(String cupTeam_name);
	
	void setNewCupPlayer(CupPlayer cupPlayer);
	
	List<CupPlayer> getPlayerWithTeamList();
	
	List<CupPlayer> getTeamDetail(int team_no);
	
	List<CupSchedule> getTeamSchedule(int team_no);
	
	List<CupPlayer> getPlayerRanking();
	
	List<Branch> getBranchList();
	
	void updateCupTeam(CupTeam cup_team);
	
	void deleteTeam(int team_no);
	
	void deletePlayer(int player_no);

	void setCupSchedule(CupSchedule cup_schedule);
	
	void updateCupSchedule(CupSchedule cup_schedule);
	
	void deleteSchedule(int schedule_no);
	
	void updateScheduleDetail(CupMatchDetail cup_detail);
	
	List<CupPlayer> getCupTeamByPlayerList(int team_no);
	
	void updateManagerByCupTeam(CupTeam cup_team);
	
	void updateManagerByCupPlayer(CupPlayer cup_player);
}
