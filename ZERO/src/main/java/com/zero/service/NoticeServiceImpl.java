package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Notice;
import com.zero.domain.Faq;
import com.zero.repository.NoticeRepository;

@Service
public class NoticeServiceImpl implements NoticeService {
	
    @Autowired
    private NoticeRepository noticeRepository;
	
    @Override
    public List<Notice> noticeList() {
    	return noticeRepository.noticeList();
    }
    
    @Override
    public List<Faq> faqList() {
    	return noticeRepository.faqList();
    }
    
    @Override
    public Notice getNotice(int notice_no) {
    	return noticeRepository.getNotice(notice_no);
    }
    
    @Override
    public Faq getFaq(int faq_no) {
    	return noticeRepository.getFaq(faq_no);
    }
    
    @Override
    public void updateNotice(Notice notice) {
    	noticeRepository.updateNotice(notice);
    } 
    
    @Override
    public void updateFaq(Faq faq) {
    	noticeRepository.updateFaq(faq);
    }
    
    @Override
    public void deleteNotice(int notice_no) {
    	noticeRepository.deleteNotice(notice_no);
    }
    
    @Override
    public void deleteFaq(int faq_no) {
    	noticeRepository.deleteFaq(faq_no);
    }
    
    @Override
    public void addNotice(Notice notice) {
    	noticeRepository.addNotice(notice);
    }
    
    @Override
    public void addFaq(Faq faq) {
    	noticeRepository.addFaq(faq);
    }
    
    @Override
    public void countNoticeHit(int notice_no) {
    	noticeRepository.countNoticeHit(notice_no);
    }
    
    @Override
    public void countFaqHit(int faq_no) {
    	noticeRepository.countFaqHit(faq_no);
    }
    
    @Override
    public List<Notice> noticePrevNext(int notice_no) {
    	return noticeRepository.noticePrevNext(notice_no);
    }
    
    @Override
    public List<Faq> faqPrevNext(int faq_no) {
    	return noticeRepository.faqPrevNext(faq_no);
    }
    
    @Override
    public List<Notice> titleSerchNotice(String keyword) {
    	return noticeRepository.titleSerchNotice(keyword);
    }

}
