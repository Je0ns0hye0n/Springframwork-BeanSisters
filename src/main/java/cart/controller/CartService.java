package cart.controller;

import java.util.List;

import cart.bean.CartDTO;

public interface CartService {
	
	//�옣諛붽뎄�땲 蹂댁뿬二쇨린
	public List<CartDTO> cartShow(String state, String cart_id) ;
	//�옣諛붽뎄�땲 �궘�젣
	public int deleteCart(int cart_num);
	//寃곗젣�븯硫� stat媛� 1濡� 蹂�寃쏀븯�뒗 sql
	public int updateState(String cart_id);
	//장바구니 담기
	public int insertCart(CartDTO cartDTO); 
 
	public int deleteAll(String cart_id);
	
	//장바구니 총금액
	   public int cartShow_sum(String cart_id);
	   
	   public int cart_getTotalA(String cart_id);

}
