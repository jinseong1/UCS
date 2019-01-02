package com.test.ucs.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.test.ucs.service.Service;

@Repository
public class Dao implements Service{
	
	//SqlSessionTemplate주입
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public List<Map> selectList(Map map) {
		
		return template.selectList("List",map);
		
	}

	@Override
	public void insert(Map map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Map map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Map map) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}
