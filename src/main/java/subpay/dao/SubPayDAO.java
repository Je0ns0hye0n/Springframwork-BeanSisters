package subpay.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import subpay.bean.SubPayDTO;

@Repository
public class SubPayDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int pay(SubPayDTO subPayDTO) {
		return sqlSession.insert("mybatis.subpayMapper.pay",subPayDTO);
	}

	public List<SubPayDTO> payCheck(String sp_mem_id) {
		return sqlSession.selectList("mybatis.subpayMapper.payCheck", sp_mem_id);
	}

}
