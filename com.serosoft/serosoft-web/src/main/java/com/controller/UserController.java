package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.User;
import com.service.UserDetailService;

@Controller
public class UserController {

	@Autowired
	private UserDetailService userDetailService;

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String UserInfo(Model model) {

		List<User> listUser = userDetailService.getListUser();
		model.addAttribute("userList", listUser);

		return "userList";
	}
	
	
	

}
