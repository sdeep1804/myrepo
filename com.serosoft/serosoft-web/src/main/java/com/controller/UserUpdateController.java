package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.User;
import com.service.UpdateUserService;
import com.service.UserDetailService;

@Controller
public class UserUpdateController {

	@Autowired
	private UpdateUserService updateUserService;

	@Autowired
	private UserDetailService userDetailService;	

	@RequestMapping(value = "/updateUser/{sn}", method = RequestMethod.GET)
	public String updateUser(@PathVariable(value = "sn") int userID, Map<String, Object> map, Model model) {

		List<User> userList = userDetailService.getListUser();
		
		User userObj = userDetailService.getUser(userID);
		model.addAttribute("userlist", userList);
		map.put("user", userObj);
		return "updateUserInfo";
	}

	@RequestMapping(value = "/updateRecords", method = RequestMethod.POST)
	public String updateUserRecord(@ModelAttribute("user") User user) {

		updateUserService.updateUser(user);
		return "redirect:/welcome.do";
	}
}
