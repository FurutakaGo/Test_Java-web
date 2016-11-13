package com.ifl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ifl.dao.LoginDao;
import com.ifl.domain.Login;
import com.ifl.service.LoginService;
@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDao ld;
	
	@Override
	public boolean loginchack(Login login){
		return ld.loginchack(login);
	}

	@Override
	public boolean checkLoginByName(String logId) {
		return ld.checkLoginByName(logId);
	}
	
}
