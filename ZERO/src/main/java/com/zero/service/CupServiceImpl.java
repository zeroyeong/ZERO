package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchejule;
import com.zero.domain.CupTeam;
import com.zero.repository.CupRepository;

@Service
public class CupServiceImpl implements CupService {

	@Autowired
	private CupRepository cupRepository;
	
	@Override
	public List<CupTeam> getCupTeamList() { 
	   
    	return cupRepository.getCupTeamList();
    } 
	
	@Override
	public CupTeam getCupTeamOne(int team_no){
		return cupRepository.getCupTeamOne(team_no);
	}
	
	@Override
	public List<CupPlayer> getCupPlayerList(){
		return cupRepository.getCupPlayerList();
	}
	
	@Override
	public List<CupSchejule> getCupSchejuleList(){
		return cupRepository.getCupSchejuleList();
	}
	
	@Override
	public void setNewCupTeam(CupTeam cupTeam) {
		cupRepository.setNewCupTeam(cupTeam);
	}
	
	@Override
	public void setNewCupPlayer(CupPlayer cupPlayer) {
		cupRepository.setNewCupPlayer(cupPlayer);
	}
	
	@Override
	public List<CupPlayer> getPlayerWithTeamList() {
		return cupRepository.getPlayerWithTeamList();
	}
	
	@Override
	public List<CupPlayer> getTeamDetail(int team_no) {
		return cupRepository.getTeamDetail(team_no);
	}
	
	@Override
	public List<CupPlayer> getPlayerRanking(){
		return cupRepository.getPlayerRanking();
	}
}
 