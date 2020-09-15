package cart.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import board.bean.BoardDTO;
import cart.bean.CartDTO;

@Repository
public class CartDAO {
	 @Autowired
	   private SqlSessionTemplate sqlSession;
	 
	//�옣諛붽뎄�땲 �솗�씤 紐⑸줉 list
	  public List<CartDTO> cartShow(String state, String cart_id){
		  Map<String, String> map= new HashMap<String,String>();
		  map.put("state",state);
		  map.put("cart_id",cart_id);
		  return sqlSession.selectList("mybatis.cartMapper.cartShow",map);
		 
	  }
	
	  //�옣諛붽뎄�땲�뿉�꽌 �궘�젣
	  public int deleteCart(int cart_num) {
		  return sqlSession.delete("mybatis.cartMapper.deleteCart", cart_num);
	  }
		   
	 //�옣諛붽뎄�땲�뿉�꽌 寃곗젣濡� 蹂�寃�
	  public int updateState(String cart_id) {
		  return sqlSession.update("mybatis.cartMapper.updateState", cart_id);
	  }

	public int insertCart(CartDTO cartDTO) {
		return sqlSession.insert("mybatis.cartMapper.insertCart", cartDTO);
	}
	
	public int deleteAll(String cart_id) {
		return sqlSession.delete("mybatis.cartMapper.deleteAll", cart_id);
	}

	public int cartShow_sum(String cart_id) {
		return sqlSession.selectOne("mybatis.cartMapper.cartShow_sum",cart_id);
	}
	
	public int cart_getTotalA(String cart_id) {
	       return sqlSession.selectOne("mybatis.cartMapper.cart_getTotalA",cart_id);
	   }
	
}
