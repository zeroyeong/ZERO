package com.zero.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.Faq;
import com.zero.domain.Notice;

@Repository
public class NoticeRepositoryImpl implements NoticeRepository{
	
	 @Autowired
     private SqlSessionTemplate sql;	
	 
	 @Override
	 public List<Notice> noticeList() {
		 return sql.selectList("Notice.nList");
	 }
	 
	 @Override
	 public List<Faq> faqList() {
		 return sql.selectList("Notice.fList");
	 }
	 
	 @Override
	 public Notice getNotice(int notice_no) {
		 return sql.selectOne("Notice.getNotice", notice_no);
	 }
	 
	 @Override 
	 public Faq getFaq(int faq_no) {
		 return sql.selectOne("Notice.getFaq", faq_no);
	 }
	 
	 @Override
	 public void updateNotice(Notice notice) {
		 sql.update("Notice.updateNotice", notice);
	 }
	 
	 @Override
	 public void updateFaq(Faq faq) {
		 sql.update("Notice.updateFaq", faq);
	 }
	 
	 @Override
	 public void deleteNotice(int notice_no) {
		 sql.delete("Notice.deleteNotice", notice_no);
	 }
	 
	 @Override
	 public void deleteFaq(int faq_no) {
		 sql.delete("Notice.deleteFaq", faq_no);
	 }
	 
	 @Override
	 public void addNotice(Notice notice) {
		 sql.insert("Notice.addNotice", notice);
	 }
	 
	 @Override
	 public void addFaq(Faq faq) {
		 sql.insert("Notice.addFaq", faq);
	 }
	 
	 @Override
	 public void countNoticeHit(int notice_no) {
		 sql.update("Notice.countNoticeHit", notice_no);
	 }
	 
	 @Override
	 public void countFaqHit(int faq_no) {
		 sql.update("Notice.countFaqHit", faq_no);
	 }
	 
	 @Override
	 public List<Notice> noticePrevNext(int notice_no) {
		return sql.selectList("Notice.noticePrevNext", notice_no);
	 }
	 @Override
	 public List<Faq> faqPrevNext(int faq_no) {
		return sql.selectList("Notice.faqPrevNext", faq_no);
	 }
	 
	 @Override
	 public List<Notice> titleSerchNotice(String keyword) {
		 return sql.selectList("Notice.titleSearchNotice", keyword);
	 }

}
