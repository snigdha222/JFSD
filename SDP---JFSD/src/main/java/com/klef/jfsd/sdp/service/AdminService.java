package com.klef.jfsd.sdp.service;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.User;
import com.klef.jfsd.sdp.model.Customer;

public interface AdminService 
{
	public Admin checkadminlogin(String uname,String pwd);
	
	public User addUser(User user);
	
	public Customer addCustomer(Customer customer);
	
}