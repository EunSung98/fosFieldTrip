/*
 *  하나의 DAO는 하나의 테이블과 연결되어 데이터 처리를 한다.
 */
package com.attmng.dao;

//connect DB

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.attmng.domain.EmployeeVO;
import com.attmng.dto.EmployeeDTO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	private static final String namespace = "com.attmng.atms.mappers.employee";
	
	@Autowired
	private SqlSession sqlSession;
	/*
	 * @Override public List getLoginInfo() throws Exception { // TODO
	 * Auto-generated method stub
	 * 
	 * System.out.println(sqlSession.selectList(namespace + ".getLoginInfo"));
	 * return null; }
	 */
	
	@Override
	public EmployeeVO LoginPOST(EmployeeDTO dto) throws Exception {

		return sqlSession.selectOne(namespace+".LoginPOST",dto.getId());
	}	
}