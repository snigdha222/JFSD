package com.klef.jfsd.sdp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages="com.klef.jfsd.sdp")
public class CourseManagementSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(CourseManagementSystemApplication.class, args);
		System.out.println("Agriculture Management System....!!!!");
	}

}
