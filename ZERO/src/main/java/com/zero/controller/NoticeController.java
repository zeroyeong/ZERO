package com.zero.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zero.domain.Faq;
import com.zero.domain.Notice; 
import com.zero.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/service")
	public String requestList(@ModelAttribute("Faq") Faq faq, @ModelAttribute("Notice") Notice notice, Model model) {
		
		List<Notice> noticeList = noticeService.getNoticeList();
		List<Faq> faqList = noticeService.getFaqList();
		
		model.addAttribute("faqList", faqList);
		model.addAttribute("noticeList" , noticeList);
		return "service/service";
	}
	
	@GetMapping("/notAdd")
	public String noticeWrite(@ModelAttribute("NewNotice") Notice notice) {

		return "service/notAdd";
	}
	
	@GetMapping("/faqAdd")
	public String faqWrite(@ModelAttribute("NewFaq") Faq faq) {
		
		return "service/faqAdd";
	}
	
	@GetMapping("/service/postNotice")
	public String noticeRead(@RequestParam("notNo") int notNo, Model model) {
		Notice notice = noticeService.getByNotNo(notNo);
		model.addAttribute("notice" , notice);
		return "service/postNotice";
	}
	
	@GetMapping("/service/postFaq")
	public String faqRead(@RequestParam("faqNo") int faqNo, Model model) {
		Faq faq = noticeService.getByFaqNo(faqNo);
		model.addAttribute("faq" , faq);
		return "service/postFaq";
	}
	
	@PostMapping("/service/notice")
	public String setNewNotice(@ModelAttribute("NewNotice") Notice notice, Model model) {
	
		noticeService.setNewNotice (notice);
		
		List<Notice> noticeList = noticeService.getNoticeList();
		
		model.addAttribute("noticeList" , noticeList);
		return "redirect:/service";
 	}
	
	@PostMapping("/service/faq")
	public String setNewFaq(@ModelAttribute("NewFaq") Faq faq, Model model) {
		
		noticeService.setNewFaq(faq);
		
		List<Faq> faqList = noticeService.getFaqList();
		model.addAttribute("faqList", faqList);
		return "redirect:/service";
	}
	
	
	@GetMapping("/revice")//게시글 내용 가져오기
	public String noticeRevice(@ModelAttribute("UpdateNotice") Notice notice, @RequestParam("notNo") int notNo,@ModelAttribute("UpdateFaq") Faq faq, @RequestParam("faqNo") int faqNo, Model model) {
		
		List<Notice> noticeList = noticeService.getNoticeList();
		List<Faq> faqList = noticeService.getFaqList();
		
		model.addAttribute("faqList", faqList);
		model.addAttribute("noticeList" , noticeList);
		return "NoticeRevice"; 
	}
	
	@PostMapping("/revice/notice")//게시글 내용 수정하기
	public String updateNotice(@ModelAttribute("UpdateNotice") Notice notice, Model model) {
		
		noticeService.updateNotice (notice);
		List<Notice> noticeList = noticeService.getNoticeList();
		model.addAttribute("noticeList", noticeList);
		return "redirect:/notice/read";
	}
	
	@PostMapping("/revice/faq")
	public String updateFaq(@ModelAttribute("UpdateFaq") Faq faq, Model model) {
		
		noticeService.updateFaq(faq);
		List<Faq> faqList = noticeService.getFaqList();
		model.addAttribute("faqList", faqList);
		return "redirect:/notice/read";
	}
	
	
	@GetMapping("/delete/notice")
	public String noticeDelete(@RequestParam("notNo") int notNo) {
		
		noticeService.deleteNotice(notNo);
		return "redirect:/notice/read";
	}
	
	@GetMapping("/delete/faq")
	public String faqDelete(@RequestParam("faqNo") int faqNo) {
		
		noticeService.deleteFaq(faqNo);
		return "redirect:/notice/read";
	}

}
