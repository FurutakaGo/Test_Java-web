package com.ifl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ifl.dao.PersonDao;
import com.ifl.domain.Person;
import com.ifl.service.PersonService;
@Service
public class PersonServiceImpl implements PersonService {
	@Autowired
	private PersonDao pd;
	@Override
	public List<Person> getPersonHobbyMap() {
		// TODO 自动生成的方法存根
		return pd.getPersonHobbyMap();
	}
	@Override
	public Person getPersonById(int id) {
		// TODO 自动生成的方法存根
		return pd.getPersonById(id);
	}
	
}
