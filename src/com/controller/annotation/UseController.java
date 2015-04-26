package com.controller.annotation;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UseController {
	@RequestMapping(value="addUser",method=RequestMethod.GET)
	public ModelAndView addUser(){
		String result ="注解类里传过来的参数";
		return new ModelAndView("/annotation" ,"s",result);
		
	}
	@RequestMapping("/delUser")
	public String  deleteUser(HttpServletRequest request){
		request.setAttribute("s", "这个是从java类，传过来的数据2");
		return ("/annotation2");
		
	}

}
