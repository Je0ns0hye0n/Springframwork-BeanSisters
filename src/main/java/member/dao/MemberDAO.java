package member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.bean.MemberDTO;
@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 로그인
	public String login(String mem_id, String mem_pw1) {
		Map<String, String> map = new HashMap<String, String>();
	      map.put("mem_id", mem_id);
	      map.put("mem_pw1", mem_pw1);
	      return sqlSession.selectOne("mybatis.memberMapper.login", map);
	}

	// 회원가입
	public int mem_write(MemberDTO memberDTO) {
		return sqlSession.insert("mybatis.memberMapper.mem_write", memberDTO);
	   }
	// 탈퇴
	public int mem_Delete(String mem_id) {
		 return sqlSession.delete("mybatis.memberMapper.mem_Delete", mem_id);
	}
	// 정보 수정전에 수정페이지에 값 적기 위해서 값 읽어오기.
	public MemberDTO getMember(String mem_id) {
		return sqlSession.selectOne("mybatis.memberMapper.getMember",mem_id);
	}

	// 회원 정보 수정
	public int modify(MemberDTO memberDTO) {	
		 return sqlSession.update("mybatis.memberMapper.modify", memberDTO);
	}

}
