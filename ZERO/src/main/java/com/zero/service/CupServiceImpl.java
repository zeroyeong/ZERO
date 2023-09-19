package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public void setNewCupTeam(CupTeam cupTeam) {
		cupRepository.setNewCupTeam(cupTeam);
	}
}
 