package com.ifl.dao;

import java.util.List;

import com.ifl.domain.Person;

public interface PersonDao {
	public List<Person> getPersonHobbyMap();
	public Person getPersonById(int id);
}
