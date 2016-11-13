package com.ifl.service;

import java.util.List;

import com.ifl.domain.Person;

public interface PersonService {
	public List<Person> getPersonHobbyMap();
	public Person getPersonById(int id);
}
