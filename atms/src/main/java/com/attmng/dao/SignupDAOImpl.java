package com.attmng.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/*
 * <SqlSession에서 제공하는 method>
 * int insert(query_id, Object obj);
 * */
@Repository
public class SignupDAOImpl implements SignupDAO{
	
	private static final String namespace = "com.attmng.atms.mappers.employeeinfo";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int SignupPOST(HashMap<String, Object> map) throws Exception {
		return sqlSession.insert(namespace+".Signup",map);
	}
	
//	@Override
//	public int SignupFindId(HashMap<String, Object> map) throws Exception{
//		return sqlSession.insert(namespace+".SignupFindId", map);
//	}
}
