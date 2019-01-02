package com.test.ucs.web;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.ucs.service.Service;


@Controller
public class Controllers {
	private static final Logger logger = LoggerFactory.getLogger(Controllers.class);
	
	//서비스 주입]
	@Resource(name="service")
	private Service service;
	
	/**
	 * home
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/home.do")
	public String HomeMove(Model model,
			HttpServletRequest req,//페이징용 메소드에 전달
			@RequestParam Map map,//검색용 파라미터 받기
			@RequestParam(required=false,defaultValue="1") int nowPage//페이징용 nowPage파라미터 받기용
			)throws Exception{
		
		//페이징을 위한 로직 끝]	
		List<Map> list= service.selectList(map);
		
		model.addAttribute("list", list);
		
		return "home";
	}
	
	/**
	 * view
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/view.do")
	public String ViewMove()throws Exception{
		
		return "View";
	}
	
	/**
	 * Edit
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/edit.do")
	public String EditMove()throws Exception{
		
		return "Edit";
	}
	
	

}
