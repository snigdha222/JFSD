package com.klef.jfsd.sdp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.User;
import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.service.AdminService;
import com.klef.jfsd.sdp.service.UserService;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	  public String mainhomedemo()
	  {
	    return "index";
	  }
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv=new ModelAndView("adminlogin");
		return mv;
	}
	
	@GetMapping("/userlogin")
	public ModelAndView facultylogindemo()
	{
		ModelAndView mv=new ModelAndView("userlogin");
		return mv;
	}
	
	@GetMapping("/customerlogin")
	public ModelAndView studentlogindemo()
	{
		ModelAndView mv=new ModelAndView("customerlogin");
		return mv;
	}
	@GetMapping("/addUser")
	public ModelAndView addfacultydemo()
	{
		ModelAndView mv=new ModelAndView("addUser","user",new User());
		return mv;
		
	}
	
	@GetMapping("/addCustomer")
	public ModelAndView addstudentdemo()
	{
		ModelAndView mv=new ModelAndView("addCustomer","customer",new Customer());
		
		return mv;
	}
	@GetMapping("/userreg")
	  public ModelAndView studentregdemo()
	  {
	       ModelAndView mv = new ModelAndView("userreg","user",new User());
	       return mv;
	  }
	
	@PostMapping("/checkadminlogin")
	public ModelAndView  checkadmminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		
		Admin admin=adminService.checkadminlogin(auname, apwd);
		
		
		if(admin!=null)
		{
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	@PostMapping("/adduserrecord")
	public ModelAndView addfacultydemo(@ModelAttribute("user") User user)
	{
		adminService.addUser(user);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addUser");
		mv.addObject("msg","User Added successfully");
		
		return mv;
	}
	
	@PostMapping("/addCustomerrecord")
	public ModelAndView addstudentdemo(@ModelAttribute("customer") Customer customer)
	{
		adminService.addCustomer(customer);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addCustomer");
		mv.addObject("msg","Customer Added successfully");
		
		return mv;
	}
	
	@PostMapping("/checkuserlogin")
	public ModelAndView  checkemplogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		
		User emp= UserService.checkuserlogin(uname, pwd);
		
		
		if(emp!=null)
		{
			HttpSession  session = request.getSession();
			session.setAttribute("uname", uname);
			mv.setViewName("facultyhome");
		}
		else
		{
			mv.setViewName("facultylogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
}