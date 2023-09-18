package com.zero.repository;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.Sample;


@Repository
public class TestRepositoryImpl implements TestRepository {
		
	@Autowired
	private SqlSessionTemplate sql;
	
	private List<Sample> list = new ArrayList<Sample>();
	
	public TestRepositoryImpl() {
	       Sample sam = new Sample();
	       sam.setObj1("aa");
	       sam.setObj2(1);
	       sam.setObj3("bb");
	       
	       Sample sam1 = new Sample();
	       sam1.setObj1("cc");
	       sam1.setObj2(2);
	       sam1.setObj3("dd");
	       
	       list.add(sam);
	       list.add(sam1);
	}
        
	//** 도서조회 하는 getAllBookList() 메서드 수정 **
    @Override
    public List<Sample> getList() { 
   
    	return sql.selectList("Sample.select");

    } 
    
    @Override
    public void setNewSample(Sample sample) {
    	
    	sql.insert("Sample.insert", sample);
    	
    	list.add(sample);
    }

    @Override
    public Sample getListNum(int objNum) {
    	
    	Sample sample = sql.selectOne("Sample.byObjNum", objNum);	
    	System.out.println("repository = " + sample);
    	return sample;
    }
    
    @Override
    public void updateSample(Sample sample) {
    	
    	sql.update("Sample.update", sample);
    }
    
    @Override
    public void deleteSample(int objNum) {
    	
    	sql.delete("Sample.delete", objNum);
    }
}
