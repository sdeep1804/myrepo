package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.service.UserDeleteService;

@Controller
public class UserDeleteController {

	@Autowired
	private UserDeleteService userDeleteService;

	@RequestMapping(value = "/deleteuser/{sn}", method = RequestMethod.GET)
	public String updateUser(@PathVariable(value = "sn") int userID) {

		userDeleteService.deleteUser(userID);
		return "redirect:/welcome.do";
	}

}
