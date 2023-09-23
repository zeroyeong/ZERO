package com.zero.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchejule;
import com.zero.domain.CupTeam;

@Repository
public class CupRepositoryImpl implements CupRepository {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	private List<CupTeam> list = new ArrayList<CupTeam>();
	
	@Override
	public List<CupTeam> getCupTeamList(){

    	return sql.selectList("Cup.selectTeam");
	}

	@Override
	public List<CupPlayer> getCupPlayerList(){

		return sql.selectList("Cup.selectPlayer");
	}

	@Override
	public List<CupSchejule> getCupSchejuleList(){
		
		return sql.selectList("Cup.selectSchejuleDetail");
	}
	@Override
	public void setNewCupTeam(CupTeam cupTeam) {
		
		//RANDOM TEAM CODE
		String generatedString = RandomStringUtils.randomAlphanumeric(5);
		cupTeam.setTeam_code(generatedString);
		
		sql.insert("Cup.insertTeam", cupTeam);
	}
	
	@Override
	public void setNewCupPlayer(CupPlayer cupPlayer) {
		
		cupPlayer.setPlayer_goal("0");
		cupPlayer.setPlayer_yellow_card("0");
		cupPlayer.setPlayer_red_card("0");
		sql.insert("Cup.insertPlayer", cupPlayer);
	}
	
	@Override
	public List<CupPlayer> getPlayerWithTeamList() {
		return sql.selectList("Cup.selectCupTeamAndPlayers");
	}
	
	@Override
	public List<CupPlayer> getTeamDetail(int team_no) {
		return sql.selectList("Cup.selectTeamDetail", team_no);
	}

}
