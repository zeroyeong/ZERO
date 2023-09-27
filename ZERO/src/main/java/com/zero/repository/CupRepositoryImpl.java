package com.zero.repository;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.zero.domain.Branch;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;

@Repository
public class CupRepositoryImpl implements CupRepository {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	private List<CupTeam> list = new ArrayList<CupTeam>();
	
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
	    	cup_team.setTeam_emblem("");
	    }
				
		sql.insert("Cup.insertTeam", cup_team);
	}
	
	@Override
	public void setNewCupPlayer(CupPlayer cupPlayer) {
		
		cupPlayer.setPlayer_games("0");
		cupPlayer.setPlayer_goal("0");
		cupPlayer.setPlayer_yellow_card("0");
		cupPlayer.setPlayer_red_card("0");
		
	    if(cupPlayer.getPhoto_file() != null) {
	    	
		       MultipartFile image = cupPlayer.getPhoto_file();  
		       String saveName = image.getOriginalFilename();  
		       File saveFile = new File("C:\\Users\\Administrator\\git\\ZERO\\ZERO\\src\\main\\webapp\\resources\\images", saveName); 
		    try {
		    		image.transferTo(saveFile);
		    		cupPlayer.setPlayer_photo(saveName);
				} catch (Exception e) {
	                throw new RuntimeException("Image saving failed", e);
	            }
		    	cupPlayer.setPlayer_photo(saveName);
		    }else {
		    	cupPlayer.setPlayer_photo("");
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

}
