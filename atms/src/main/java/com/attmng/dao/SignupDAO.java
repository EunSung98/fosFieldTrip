package com.attmng.dao;

import java.util.HashMap;

// mapper에서 sql문 가져와서 사용

public interface SignupDAO {
	public int SignupPOST(HashMap<String, Object> map) throws Exception;
//	public int SignupFindId(HashMap<String, Object> map) throws Exception;
}
