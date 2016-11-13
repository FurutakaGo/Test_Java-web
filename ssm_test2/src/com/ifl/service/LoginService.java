package com.ifl.service;

import com.ifl.domain.Login;

public interface LoginService {
	public boolean loginchack(Login login);
	public boolean checkLoginByName(String logId);
}
