package com.zero.service;

import java.util.List;

import com.zero.domain.CupTeam;

public interface CupService {

	public List<CupTeam> getCupTeamList();
	
	public void setNewCupTeam(CupTeam cupTeam);
}
