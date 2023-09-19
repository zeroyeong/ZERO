package com.zero.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.CupPlayer;
import com.zero.domain.CupTeam;

@Repository
public class CupRepositoryImpl implements CupRepository {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	private List<CupTeam> list = new ArrayList<CupTeam>();
	
	@Override
	public List<CupTeam> getCupTeamList(){

    	return sql.selectList("CupTeam.select");
	}
	
	public List<CupPlayer> getCupPlayerList(){
		
		return sql.selectList("CupPlayer.select");
	}
	
	
	@Override
	public void setNewCupTeam(CupTeam cupTeam) {
		
		//RANDOM TEAM CODE
		String generatedString = RandomStringUtils.randomAlphanumeric(5);
		cupTeam.setTeamCode(generatedString);
		
		sql.insert("CupTeam.insert", cupTeam);
	}
	
	@Override
	public void setNewCupPlayer(CupPlayer cupPlayer) {
		
		cupPlayer.setPlayerGoal("0");
		cupPlayer.setPlayerYellowCard("0");
		cupPlayer.setPlayerRedCard("0");
		sql.insert("CupPlayer.insert", cupPlayer);
	}
}
