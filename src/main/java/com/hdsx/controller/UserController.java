package com.hdsx.controller;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@RequestMapping("/user")
	public ModelAndView checkUser(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String username = request.getParameter("username");
		String password =request.getParameter("password");
		String yam =request.getParameter("yzm");
		 // 忽略验证码大小写
		if (!(yam.equalsIgnoreCase(session.getAttribute("code").toString()))) {
			mav.setViewName("error");
			mav.addObject("msg", "验证码不正确");
			return mav;
		} else {
			if (username.equals("123")&&password.equals("123")) {
				mav.setViewName("main");
				mav.addObject("username", username);
			}else {
				mav.setViewName("pwderr");
				mav.addObject("pwderr", username);
				//do ？其实应该去登录界面
			}
		}
		return mav;
	}
}
