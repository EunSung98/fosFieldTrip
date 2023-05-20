package com.attmng.service;

import java.util.HashMap;
//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.attmng.dao.SignupDAO;
import com.attmng.dto.EmployeeDTO;

@Service
public class SignupServiceImpl implements SignupService {
	
	@Autowired
	private SignupDAO signupDao;
	
	HashMap<String, Object> paramMap;

	@Override
	public int writeSignup(HashMap<String, Object> map) {
//		signupDao.SignupPOST(employee);
	
		return 0;
	}
	
}
