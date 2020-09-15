package cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import cart.bean.CartDTO;
import cart.dao.CartDAO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;

	@Override
	public int deleteCart(int cart_num) {
		return cartDAO.deleteCart(cart_num);
	}

	@Override
	public int updateState(String cart_id) {
		return cartDAO.updateState(cart_id);
	}

	@Override
	public List<CartDTO> cartShow(String state, String cart_id) {
		return cartDAO.cartShow(state,cart_id);
	}

	@Override
	public int insertCart(CartDTO cartDTO) {
		return cartDAO.insertCart(cartDTO);
	}

	@Override
	public int deleteAll(String cart_id) {
		return cartDAO.deleteAll(cart_id);
	}
	
	  @Override
	   public int cartShow_sum(String cart_id) {
	      return cartDAO.cartShow_sum(cart_id);
	   }

	  @Override
	   public int cart_getTotalA(String cart_id) {
	      return cartDAO.cart_getTotalA(cart_id);
	   }   
}
