package com.attmng.domain;


/*
 * 테이블의 칼럼에 해당하는 변수를 만들어준다. 
 * 그리고 위 처럼 값을 넣거나 가져올 수 있도록 Setter/Getter 메서드를 만든다.
 */
public class EmployeeVO {
	private String id;
	private String password;
	private String emp_name;
	private String dep_name;
	private String pos_name;
	private String emp_code;
	private String dep_code;
	private String pos_code;
//	private String comName_ryak;
	private String com_code;
//	private String adm_code;
	private String mail;
	private int gender;
	private String entry_date;
	private String cellphone;
	private String address;
    
	public String getCom_code() {
		return com_code;
	}
	public void setCom_code(String com_code) {
		this.com_code = com_code;
	}
	public String getEmp_code() {
		return emp_code;
	}
	public void setEmp_code(String emp_code) {
		this.emp_code = emp_code;
	}
	public String getDep_code() {
		return dep_code;
	}
	public void setDep_code(String dep_code) {
		this.dep_code = dep_code;
	}
	public String getPos_code() {
		return pos_code;
	}
	public void setPos_code(String pos_code) {
		this.pos_code = pos_code;
	}
	public String getMail() {
      return mail;
   }
   public void setMail(String mail) {
      this.mail = mail;
   }
   public int getGender() {
      return gender;
   }
   public void setGender(int gender) {
      this.gender = gender;
   }
   public String getEntry_date() {
      return entry_date;
   }
   public void setEntry_date(String entry_date) {
      this.entry_date = entry_date;
   }
   public String getCellphone() {
      return cellphone;
   }
   public void setCellphone(String cellphone) {
      this.cellphone = cellphone;
   }
   public String getAddress() {
      return address;
   }
   public void setAddress(String address) {
      this.address = address;
   }
//   public String getAdm_code() {
//      return adm_code;
//   }
//   public void setAdm_code(String adm_code) {
//      this.adm_code = adm_code;
//   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
   }
   public String getEmp_name() {
      return emp_name;
   }
   public void setEmp_name(String emp_name) {
      this.emp_name = emp_name;
   }
   public String getPos_name() {
      return pos_name;
   }
   public void setPos_name(String pos_name) {
      this.pos_name = pos_name;
   }
//   public String getComName_ryak() {
//      return comName_ryak;
//   }
//   public void setComName_ryak(String comName_ryak) {
//      this.comName_ryak = comName_ryak;
//   }
   public String getDep_name() {
      return dep_name;
   }
   public void setDep_name(String dep_name) {
      this.dep_name = dep_name;
   }
}