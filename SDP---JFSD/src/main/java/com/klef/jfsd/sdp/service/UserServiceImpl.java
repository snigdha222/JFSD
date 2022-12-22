package com.klef.jfsd.sdp.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.User;
import com.klef.jfsd.sdp.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService
{

	@Autowired
	private UserRepository userRepository;

	public User checkuserlogin(String uname, String pwd) {
		
		return userRepository.checkfacultylogin(uname,pwd);
	}
	
	
}