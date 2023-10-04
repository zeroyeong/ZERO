package com.zero.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zero.domain.Branch;
import com.zero.domain.Reservation;
import com.zero.service.BranchService;

@Controller
public class BranchController {

    @Autowired
    private BranchService branchService;

    @GetMapping("/branch")
    public String getList(Model model) {
        List<Branch> list = branchService.branchList();
        model.addAttribute("branchList", list);
        
        return "branch/branch";
    }

    @GetMapping("/branch/{branch_code}")
    public String branchInfo(@PathVariable String branch_code, Model model) {
        Branch branch = branchService.getbranchInfo(branch_code);
        Reservation reservation = new Reservation();
        model.addAttribute("branch", branch);
        model.addAttribute("reservation", reservation);
        return "branch/branchInfo";
    }
    @GetMapping("/branch/{branch_code}_info")
    public String branchIntroduce(@PathVariable String branch_code, Model model) {
        Branch branch = branchService.getbranchInfo(branch_code);
        model.addAttribute("branch", branch);
        return "branch/Introduce";
    }

    @GetMapping("/branch/{branch_code}/reservation")
    public String getReservation(@ModelAttribute("reservation") Reservation reservation) {
        return "branch/branchInfo";
    }

    @PostMapping("/branch/{branch_code}/reservation")
    public String addReservation(@ModelAttribute("reservation") Reservation reservation) {
		branchService.addReservation(reservation); 
        return "redirect:/branch/{branch_code}";
    }	

	@PostMapping("/branch/{branch_code}/timeCheck")
	@ResponseBody
	public Map<String, Object> checkTime(@RequestParam("re_stadium") int re_stadium,
	                                     @RequestParam("re_branch") int re_branch,
	                                     @RequestParam("re_date") String re_date) {
	    Map<String, Object> response = new HashMap<>();
	    List<Reservation> reservationList = branchService.timeList(re_stadium, re_branch, re_date);
	    List<Map<String, Object>> timeList = new ArrayList<>();

	    for (Reservation reservation : reservationList) {
	        Map<String, Object> timeMap = new HashMap<>();
	        timeMap.put("time_no", reservation.getTime_no());
	        timeMap.put("time_start", reservation.getTime_start());
	        timeMap.put("time_end", reservation.getTime_end());
	        timeList.add(timeMap);
	    }

	    response.put("timeList", timeList);
	    return response;
	}
	@GetMapping("/reservation") 
	public String reservation(Model model) {
		List<Reservation> list = new ArrayList<>();
		model.addAttribute("reservationList", list);
		return "branch/reservation";
	}
	@PostMapping("/reservation")
	public String reservationInfo(@RequestParam("branch_code") String branch_code, Model model) {
	    Branch branch = branchService.getbranchInfo(branch_code);
	    model.addAttribute("branch", branch);
	    String returnURL = "redirect:/branch/" + branch_code;
	    
	    return returnURL;
	}
	
	@PostMapping("/reservation/reservationInfo")
	public String reservationList(@RequestParam("re_name") String re_name, 
								  @RequestParam("re_pwd") String re_pwd , Model model) {
	    List<Reservation> list = branchService.reservationList(re_name, re_pwd);
	    model.addAttribute("reservationList", list);
	    return "branch/reservationInfo";
	}
	@PostMapping("/reservation/cancel")
	public String deleteReservation(@RequestParam("re_no") int re_no,
									@RequestParam("re_pwd") String re_pwd) {
		branchService.deleteReservation(re_no, re_pwd);
		return "redirect:/reservation";
		
	}
}