package com.klef.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.User;

@Repository
public interface AdminRepository extends CrudRepository<Admin,String> 
{
	@Query("select a from Admin a where username=?1 and password=?2")
	public Admin checkadminlogin(String uname, String pwd);
	
}
