package com.test.spring.mvc.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	private int id;
	private String name;
	private String lastName;
	private int age;
	private char gender; // can be 'f' or 'm'

	
}
