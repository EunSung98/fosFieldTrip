package com.attmng.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
//import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.dbcp2.BasicDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.attmng.dao.SignupDAO;
import com.attmng.dto.EmployeeDTO;
import com.attmng.exceptions.SignupIdException;
import com.attmng.service.SignupService;
//import com.attmng.dao.SignupDAO;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
    BasicDataSource dataSource;

//	main page 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("call main");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "G00-0";
	}
	
//	after login, main page 
	@RequestMapping("G00-1")
	public String home1() {
		return "G00-1";
	}
	
//	login page 
	@RequestMapping("G01")
	public String login() {
		return "G01";
	}
	
//	work page
	@RequestMapping("G06")
	public String Work() {
		return "G06";
	}

//	sign up page 
	@RequestMapping("G02")
	public String signUp() {
		return "G02";
	}
	
//	근태검색 page 
	@RequestMapping("G07")
	public String ManageWork() {
		return "G07";
	}
	
	@Autowired
	private SignupDAO dao;
	
	@RequestMapping("G02.submit")
	public String signUp(HttpServletRequest request,@ModelAttribute EmployeeDTO employee) throws Exception {
		String id = employee.getId();
		String password = employee.getPassword();
		String emp_name = employee.getEmp_name();
		String gender = employee.getGender();
		String entry_date = employee.getEntry_date();
		String com_code = employee.getCom_code();
		String dep_code = employee.getDep_code();
		String pos_code = employee.getPos_code();
		String mail = employee.getMail();
		String cellphone = employee.getCellphone();
		String address = employee.getAddress();
		
		HashMap<String, Object> m = new HashMap<>();
		m.put("id", id);
		m.put("password", password);
		m.put("emp_name", emp_name);
		m.put("gender", gender);
		m.put("entry_date", entry_date); //비워 놓으면 null이 나옴
		m.put("com_code", com_code); // 비워놓으면 
		m.put("dep_code", dep_code);
		m.put("pos_code", pos_code);
		m.put("mail", mail);
		m.put("cellphone", cellphone);
		m.put("address", address);

		try {
			dao.SignupPOST(m);
			return "G01";
		}catch(Exception e){
			return "alert";
		}
	}
	
}

