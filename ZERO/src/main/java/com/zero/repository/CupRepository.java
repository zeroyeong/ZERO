package com.zero.repository;

import java.util.List;

import com.zero.domain.CupTeam;

public interface CupRepository {

	public List<CupTeam> getCupTeamList();
	
	public void setNewCupTeam(CupTeam cupTeam);
}
