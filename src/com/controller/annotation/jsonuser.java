package com.controller.annotation;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
@RequestMapping("/jsonuser")
public class jsonuser {
	
	
	@RequestMapping("/add")
	public String addUser(){	
		
		return "/json";
	}
	
	@RequestMapping("/testajax")
	public String addUser2(){	
		
		return "/testajax";
	}
	@RequestMapping("/add1")
	public String addUser3(){	
		
		return "/json1";
	}

	
	@RequestMapping("/adduser")
	public String addUser(user user, HttpServletRequest Request, HttpServletResponse response){
		
		//Request.setAttribute("username", user.getUsername());
		//Request.setAttribute("age", user.getAge());
		
		String result = "{\"userName\":\" "+ user.getUsername() +" \",\"age\":\" "+ user.getAge()+" \"}";
		PrintWriter out = null;
		response.setContentType("application/json");
		try {
			out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "/annotation3_1";
	}
	
	@RequestMapping("/addUserJson")
	public void addUserJson(user user,HttpServletRequest request,HttpServletResponse response){
		//{"username":"userName","age","age"}
		String result = "{\"username\":\" "+ user.getUsername() +" \",\"age\":\" "+ user.getAge()+" \"}";
		PrintWriter out = null;
		response.setContentType("application/json");
		
		try {
			out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	

}
