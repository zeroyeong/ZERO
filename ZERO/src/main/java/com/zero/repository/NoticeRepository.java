package com.zero.repository;

import java.util.List;

import com.zero.domain.Faq;
import com.zero.domain.Notice;

/* ��ӹ޾� �����ϱ� ���ؼ� interface Ŭ���� �� BookRepository �� �����ϰ�
 * getAllBookList() �߻�޼��带 �����մϴ�. */
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
