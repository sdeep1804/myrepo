package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.User;
import com.service.AddUserService;

@Controller
public class AddUserController {

	@Autowired
	private AddUserService addUserService;

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String user(Map<String, Object> map,Model model) {
		map.put("User", new User());		
		return "addUser";
	}

	@RequestMapping(value = "/userAdd", method = RequestMethod.POST)
	public String adduser(@ModelAttribute("User") User user,Model model) {

		user=addUserService.addUser(user);
		if (user==null) {			
			return "addUser";
			
		} else {
			return "redirect:/user.do";
		}
		
	}

}
