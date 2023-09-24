package com.zero.repository;

import java.util.List;

import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchejule;
import com.zero.domain.CupTeam;

public interface CupRepository {

	public List<CupTeam> getCupTeamList();
	
	public CupTeam getCupTeamOne(int team_no);
	
	public List<CupPlayer> getCupPlayerList();
	
	public List<CupSchejule> getCupSchejuleList();
	
	public void setNewCupTeam(CupTeam cupTeam);
	
	public void setNewCupPlayer(CupPlayer cupPlayer);
	
	public List<CupPlayer> getPlayerWithTeamList();
	
	public List<CupPlayer> getTeamDetail(int team_no);
	
	public List<CupPlayer> getPlayerRanking();
}
