package com.zero.repository;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.zero.domain.Branch;
import com.zero.domain.CupMatchDetail;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;

@Repository
public class CupRepositoryImpl implements CupRepository {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	@Override
	public List<CupTeam> getCupTeamList(){

    	return sql.selectList("Cup.selectTeamWithbranch");
	}
 
	@Override
	public CupTeam getCupTeamOne(int team_no){
		return sql.selectOne("Cup.selectOneTeam", team_no);
	}
	
	@Override
	public List<CupPlayer> getCupPlayerList(){

		return sql.selectList("Cup.selectPlayer");
	}

	@Override
	public List<CupSchedule> getCupScheduleList(){
		
		return sql.selectList("Cup.selectScheduleDetail");
	}
	@Override
	public void setNewCupTeam(CupTeam cup_team) {
		
		//RANDOM TEAM CODE
		String generatedString = RandomStringUtils.randomAlphanumeric(5);
		cup_team.setTeam_code(generatedString);

		//real DATE
	    Date currentDate = new Date();

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String formattedDate = dateFormat.format(currentDate);
         
		cup_team.setTeam_member_cnt("1");
		cup_team.setTeam_reg_year(formattedDate);
				
		if(cup_team.getEmblem_file() != null) {
	    	
	       MultipartFile image = cup_team.getEmblem_file();  
	       String saveName = image.getOriginalFilename();  
	       File saveFile = new File("C:\\Users\\Administrator\\git\\ZERO\\ZERO\\src\\main\\webapp\\resources\\images", saveName); 
	    try {
	    		image.transferTo(saveFile);
	    		cup_team.setTeam_emblem(saveName);
			} catch (Exception e) {
                throw new RuntimeException("Image saving failed", e);
            }
	    	cup_team.setTeam_emblem(saveName);
	    }else {
	    	cup_team.setTeam_emblem("basic.PNG");
	    }
				
		sql.insert("Cup.insertTeam", cup_team);
	}
	
	@Override
	public int getCupTeamByCupTeamNo(String cupTeam_name) {
		return sql.selectOne("Cup.selectTeamByTeamName", cupTeam_name);
	}
	
	@Override
	public void setNewCupPlayer(CupPlayer cupPlayer) {
		
		cupPlayer.setPlayer_games(0);
		cupPlayer.setPlayer_goal(0);
		cupPlayer.setPlayer_yellow_card(0);
		cupPlayer.setPlayer_red_card(0);
		
		if(cupPlayer.getPhoto_file() != null) {
	    	
		       MultipartFile image = cupPlayer.getPhoto_file();  
		       String saveName = image.getOriginalFilename();
		       
		       if(saveName == "") {
		    	   return;
		       }
		       
		       File saveFile = new File("C:\\Users\\Administrator\\git\\ZERO\\ZERO\\src\\main\\webapp\\resources\\images", saveName); 
		    try {
		    		image.transferTo(saveFile);
		    		cupPlayer.setPlayer_photo(saveName);
				} catch (Exception e) {
	                throw new RuntimeException("Image saving failed", e);
	            }
		    	cupPlayer.setPlayer_photo(saveName);
	    } else {
		  	cupPlayer.setPlayer_photo("basic.PNG");
		}
		
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
	
	@Override
	public List<CupSchedule> getTeamSchedule(int team_no) {
		return sql.selectList("Cup.selectTeamSchedule", team_no);
	}
	
	@Override
	public List<CupPlayer> getPlayerRanking(){
		return sql.selectList("Cup.selectTeamAndPlayerRanking");
	}
	
	@Override
	public List<Branch> getBranchList(){
		return sql.selectList("Branch.bList");
	}
	
	@Override
	public void updateCupTeam(CupTeam cup_team) {
		
		if(cup_team.getEmblem_file() != null) {    	
		       MultipartFile image = cup_team.getEmblem_file();  
		       String saveName = image.getOriginalFilename(); 

		       if(saveName == "") {
		    	   return;
		       }
		       
		       File saveFile = new File("C:\\Users\\Administrator\\git\\ZERO\\ZERO\\src\\main\\webapp\\resources\\images", saveName); 
		    try {
		    		image.transferTo(saveFile);
		    		cup_team.setTeam_emblem(saveName);
				} catch (Exception e) {
	                throw new RuntimeException("Image saving failed", e);
	            }
		    	cup_team.setTeam_emblem(saveName);
		    }else {
		    	cup_team.setTeam_emblem("basic.PNG");
		    }				
		sql.update("Cup.updateTeam", cup_team);
	}
	
	@Override
	public void deleteTeam(int team_no) {
		sql.delete("Cup.deleteTeam",team_no);
	}
	
	@Override
	public void deletePlayer(int player_no) {
		sql.delete("Cup.deletePlayer", player_no);
	}

	@Override
	public void setCupSchedule(CupSchedule cup_schedule) {
		
		CupMatchDetail detail = new CupMatchDetail();
		detail.setDetail_home_goal("");
		detail.setDetail_away_goal("");
		detail.setDetail_home_yellow_card("");
		detail.setDetail_away_yellow_card("");
		detail.setDetail_home_red_card("");
		detail.setDetail_away_red_card("");
		
		int cnt = 0;
		cnt = sql.selectOne("Cup.selectScheduleCnt");
		
		cup_schedule.setDetail_no(cnt+1);
		
		sql.insert("Cup.insertSchedule", cup_schedule);
		sql.insert("Cup.insertScheduleDetail", detail);
	}
	
	@Override
	public void updateCupSchedule(CupSchedule cup_schedule) {
		sql.update("Cup.updateSchedule", cup_schedule);
	}
	
	@Override
	public void deleteSchedule(int schedule_no) {
		sql.delete("Cup.deleteSchedule", schedule_no);
	}
	
	@Override
	public void updateScheduleDetail(CupMatchDetail cup_detail) {

		sql.update("Cup.updateScheduleDetail", cup_detail);
	}
	
	@Override
	public List<CupPlayer> getCupTeamByPlayerList(int team_no){
		return sql.selectList("Cup.CupTeamByPlayerList", team_no);
	}
	
	@Override
	public void updateManagerByCupTeam(CupTeam cup_team) {
		sql.update("Cup.updateManagerByCupTeam", cup_team);
	}
	
	@Override
	public void updateManagerByCupPlayer(CupPlayer cup_player) {
		sql.update("Cup.updateManagerByCupPlayer", cup_player);
	}
}
