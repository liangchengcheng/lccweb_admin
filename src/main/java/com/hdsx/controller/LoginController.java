package com.hdsx.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.hdsx.service.UserService;
import com.hdsx.util.TextUtils;

import org.springframework.ui.Model;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	UserService userInfoService;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String list(Model model, Integer offset, Integer limit) {
		model.addAttribute("userlist", "hellow");
		return "login";
	}
	

	@RequestMapping("/user")
	public String checkUser(HttpServletRequest request, HttpSession session, Model model) {

		// 如果已经登录，直接转到主页
		Boolean logined = (Boolean) request.getSession().getAttribute(TextUtils.LOGIN_IN);
		if (logined != null && logined) {
			return "redirect:/main";
		}

		ModelAndView mav = new ModelAndView();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String yam = request.getParameter("yzm");

		if (TextUtils.isEmpty(username) || TextUtils.isEmpty(password) || TextUtils.isEmpty(yam))
			return "redirect:login";
		// 忽略验证码大小写
		if (!(yam.equalsIgnoreCase(session.getAttribute("code").toString()))) {
			model.addAttribute("error_msg", "验证码不正确");
			return "redirect:login";
		}

		if (userInfoService.checkUser(username, password)) {
			mav.addObject("username", username);
			request.getSession().setAttribute(TextUtils.LOGIN_IN, true);
			return "redirect:/main";
		} else {
			return "error";
		}
	}

	@RequestMapping("/quit")
	public String quit(HttpServletRequest request, HttpSession session, Model model) {
		Boolean logined = (Boolean) request.getSession().getAttribute(TextUtils.LOGIN_IN);
		if (logined != null && logined) {
			session.setAttribute(TextUtils.LOGIN_IN, false);
		}
		return "redirect:/login";
	}
}
