package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Branch;
import com.zero.domain.CupMatchDetail;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
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
	public List<CupSchedule> getCupScheduleList(){
		return cupRepository.getCupScheduleList();
	}
	
	@Override
	public void setNewCupTeam(CupTeam cupTeam) {
		cupRepository.setNewCupTeam(cupTeam);
	}
	
	@Override
	public int getCupTeamByCupTeamNo(String cupTeam_name) {
		return cupRepository.getCupTeamByCupTeamNo(cupTeam_name);
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
	public List<CupSchedule> getTeamSchedule(int team_no){
		return cupRepository.getTeamSchedule(team_no);
	}
	
	@Override
	public List<CupPlayer> getPlayerRanking(){
		return cupRepository.getPlayerRanking();
	}
	
	@Override
	public List<Branch> getBranchList(){
		return cupRepository.getBranchList();
	}
	
	@Override
	public void updateCupTeam(CupTeam cup_team) {
		cupRepository.updateCupTeam(cup_team);
	}
	
	@Override
	public void deleteTeam(int team_no) {
		cupRepository.deleteTeam(team_no);
	}
	
	@Override
	public void deletePlayer(int player_no) {
		cupRepository.deletePlayer(player_no);
	}
	
	@Override
	public void setCupSchedule(CupSchedule cup_schedule) {
		cupRepository.setCupSchedule(cup_schedule);
	}
	
	@Override
	public void updateCupSchedule(CupSchedule cup_schedule) {
		cupRepository.updateCupSchedule(cup_schedule);
	}
	
	@Override
	public void deleteSchedule(int schedule_no) {
		cupRepository.deleteSchedule(schedule_no);
	}
	
	@Override
	public void updateScheduleDetail(CupMatchDetail cup_detail) {
		cupRepository.updateScheduleDetail(cup_detail);
	}
	
	@Override
	public List<CupPlayer> getCupTeamByPlayerList(int team_no){
		return cupRepository.getCupTeamByPlayerList(team_no);
	}
	
	@Override
	public void updateManagerByCupTeam(CupTeam cup_team) {
		cupRepository.updateManagerByCupTeam(cup_team);
	}
	
	@Override
	public void updateManagerByCupPlayer(CupPlayer cup_player) {
		cupRepository.updateManagerByCupPlayer(cup_player);
	}
}
 