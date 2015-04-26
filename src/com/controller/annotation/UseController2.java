package com.controller.annotation;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/*SpringMVC参数传递
 * 
 * 
 * 
 * */

@Controller
@RequestMapping("/user2")
public class UseController2 {
	
	
	@RequestMapping("/add")
	public String addUser(){	
		
		return "/annotation2";
	}
	

	
	@RequestMapping("/adduser")
	public String addUser(String userName,String age, HttpServletRequest Request){
		System.out.printf(userName,age );
		Request.setAttribute("username", userName);
		Request.setAttribute("age", age);
		
		return "/annotation2_1";
	}
	

}
