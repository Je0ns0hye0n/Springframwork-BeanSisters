package cart.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
import cart.bean.CartDTO;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;

	  
	// CartShowController
	   @RequestMapping(value = "/bs_member/cart.do")
	   public ModelAndView cartShow(HttpServletRequest request) {

	      HttpSession session = request.getSession();
	      // cart_id=mem_id
	      String cart_id = (String) session.getAttribute("mem_id");
	      String state = "0";
	      // cartShow泥섎━
	      System.out.println(cart_id);
	      int count = cartService.cart_getTotalA(cart_id);
	   
	      ModelAndView modelAndView = new ModelAndView();
	     
	      if (count > 0) {
	         List<CartDTO> list = cartService.cartShow(state, cart_id);
	         int cartShow_sum = cartService.cartShow_sum(cart_id);
	         modelAndView.addObject("cart_id", cart_id);
	         modelAndView.addObject("list", list);
	         modelAndView.addObject("cartShow_sum", cartShow_sum);
	         modelAndView.setViewName("cart.jsp");

	      } else {
	         modelAndView.setViewName("/bs_member/cart_count.jsp");

	      }
	      
	      

	      return modelAndView;
	   }

	// CartDeleteController
	@RequestMapping(value = "/bs_member/cartDelete.do")
	public ModelAndView deleteCart(HttpServletRequest request) {

		// 移댄듃 踰덊샇�빐�떦 �뒠�뵆 �궘�젣
	
		int cart_num = Integer.parseInt(request.getParameter("cart_num"));
		System.out.println("cart_num:"+cart_num);
		cartService.deleteCart(cart_num);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/bs_member/cart.do");

		return modelAndView;
	}

	// UpdateStateController
	@RequestMapping(value = "/bs_member/updateState.do")
	public ModelAndView updateState(HttpServletRequest request) {
		// �꽭�뀡媛��졇�삤湲�
		HttpSession session = request.getSession();
		// cart_id=mem_id
		String cart_id = (String) session.getAttribute("mem_id");

		cartService.updateState(cart_id);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/bs_member/payCheck.do");

		return modelAndView;

	}

	// CartinsertController
	   @RequestMapping(value = {"/bs_shop/insertCart.do","/bs_class/insertCart.do"})
	   
	   public ModelAndView cartInsert(HttpServletRequest request) {
	      
	      HttpSession session = request.getSession(); // 주문자 세션 가져오기
	      // 인코딩
	      try {
	         request.setCharacterEncoding("UTF-8");
	      } catch (UnsupportedEncodingException e) {
	         e.printStackTrace();
	      }

	      // 데이터 가져오기
	      
	      String cart_id = (String) session.getAttribute("mem_id"); // 주문자 -nn
	      System.out.println("cart_id"+cart_id);
	      String c_pro_name = request.getParameter("c_pro_name"); // 상품이름 -n
	      System.out.println("c_pro_name"+c_pro_name);
	      int cart_price = Integer.parseInt(request.getParameter("cart_price")); // 가격-n
	      System.out.println("cart_price"+cart_price);
	      String cart_class = request.getParameter("cart_class"); // 클래스 이름 -n
	      System.out.println("cart_class"+cart_class);
	      int cart_count = Integer.parseInt(request.getParameter("cart_count")); // 수량 or 클래스 인원-n
	      System.out.println("cart_count"+cart_count);
	      
	      ModelAndView modelAndView = new ModelAndView();
	      
	      if(Integer.toString(cart_price)==null) {
	          modelAndView.setViewName("/bs_class/qty_check.jsp");
	      }else{
	      
	      // DB연결 및 데이터저장
	      CartDTO cartDTO = new CartDTO();
	      cartDTO.setCart_id(cart_id);
	      cartDTO.setCart_price(cart_price);
	      cartDTO.setC_pro_name(c_pro_name);
	      cartDTO.setCart_class(cart_class);
	      cartDTO.setCart_count(cart_count);

	      
	      // cartDTO
	      int su = cartService.insertCart(cartDTO);
	      System.out.println(su);

	      // 화면이동
	      
	      modelAndView.addObject("su", su); // request.setAttribute("su", su);
	      modelAndView.setViewName("/bs_member/cart.do");
	      }
	      return modelAndView;
	   }
}