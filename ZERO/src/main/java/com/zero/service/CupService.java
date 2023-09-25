package com.zero.service;

import java.util.List;

import com.zero.domain.Branch;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;

public interface CupService {

	public List<CupTeam> getCupTeamList();
	
	public CupTeam getCupTeamOne(int team_no);
	
	public List<CupPlayer> getCupPlayerList();
	
	public List<CupSchedule> getCupScheduleList();
	
	public void setNewCupTeam(CupTeam cupTeam); 
	
	public void setNewCupPlayer(CupPlayer cupPlayer);
	
	public List<CupPlayer> getPlayerWithTeamList();
	
	public List<CupPlayer> getTeamDetail(int team_no);
	
	public List<CupPlayer> getPlayerRanking();
	
	public List<Branch> getBranchList();
}
