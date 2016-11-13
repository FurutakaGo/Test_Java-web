package com.ifl.dao;

import com.ifl.domain.Login;

public interface LoginDao {
	public boolean loginchack(Login login);
	public boolean checkLoginByName(String logId);
}
