package com.klef.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.User;

@Repository
public interface UserRepository extends CrudRepository<User,Integer>
{
	@Query("select f from User f where username=?1 and password=?2")
	public User checkfacultylogin(String uname,String pwd);
}