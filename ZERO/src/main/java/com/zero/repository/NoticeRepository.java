package com.zero.repository;

import java.util.List;

import com.zero.domain.Faq;
import com.zero.domain.Notice;

/* 상속받아 구현하기 위해서 interface 클래스 인 BookRepository 를 생성하고
 * getAllBookList() 추상메서드를 생성합니다. */
public interface NoticeRepository {
	public List<Notice> getNoticeList();
	
	public List<Faq> getFaqList();
	
	public Notice getByNotNo(int notNo);
	
	public Faq getByFaqNo(int faqNo);
	
	public void setNewNotice(Notice notice);
	
	public void setNewFaq(Faq faq);
	
	public void updateNotice(Notice notice);
	
	public void updateFaq(Faq faq);
	
	public void deleteNotice(int notNo);
	
	public void deleteFaq(int faqNo);

	

}
