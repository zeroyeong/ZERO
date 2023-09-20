package com.zero.service;

import java.util.List;

import com.zero.domain.CupPlayer;
import com.zero.domain.CupTeam;

public interface CupService {

	public List<CupTeam> getCupTeamList();
	
	public List<CupPlayer> getCupPlayerList();
	
	public void setNewCupTeam(CupTeam cupTeam);
	
	public void setNewCupPlayer(CupPlayer cupPlayer);
	
	public List<CupPlayer> getPlayerWithTeamList();
}
