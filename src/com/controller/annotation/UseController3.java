package com.controller.annotation;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.controller.entity.user;

/*SpringMVC和json结合传递参数
 * 
 * 
 * 
 * */

@Controller
@RequestMapping("/user3")
public class UseController3 {
	
	
	@RequestMapping("/add")
	public String addUser(){	
		
		return "/annotation3";
	}
	

	
	@RequestMapping("/adduser")
	public String addUser(user user, HttpServletRequest Request){
		
		Request.setAttribute("username", user.getUsername());
		Request.setAttribute("age", user.getAge());
		
		return "/annotation2_1";
	}
	

}
