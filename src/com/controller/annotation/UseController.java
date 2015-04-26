package com.controller.annotation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UseController {
	@RequestMapping(value="addUser",method=RequestMethod.GET)
	public ModelAndView addUser(){
		String result ="注解类里传过来的参数";
		return new ModelAndView("/annotation" ,"s",result);
		
	}
	
	public ModelAndView deleteUser(){
		return null;
		
	}

}
