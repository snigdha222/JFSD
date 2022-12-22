package com.klef.jfsd.sdp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Customer;

@Repository
public interface CustomerRepository extends CrudRepository<Customer,String>{

}