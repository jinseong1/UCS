package com.test.ucs.service;

import java.util.List;
import java.util.Map;

public interface Service {
	
	//목록용]
	//레코드를 맵에 담자
	List<Map> selectList(Map map);
	//입력/수정/삭제]
	void insert(Map map);
	void delete(Map map);
	void update(Map map);
	
}
