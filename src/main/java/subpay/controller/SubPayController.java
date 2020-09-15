package subpay.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cart.bean.CartDTO;
import cart.controller.CartService;
import cart.dao.CartDAO;
import subpay.bean.SubPayDTO;

@Controller
public class SubPayController {

   @Autowired
   private SubPayService subPaySerive;
   
   @Autowired
   private CartService cartService;
   
   @RequestMapping(value= "/bs_member/pay.do")
   public ModelAndView pay(HttpServletRequest request)
   {
       // 한글 처리
        try {
           request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
           e.printStackTrace();
        }
   

      String sp_mem_id=request.getParameter("sp_mem_id");
      String sp_coffee_name=request.getParameter("sp_coffee_name");
      String sp_coffee_taste=request.getParameter("sp_coffee_taste");
      String sp_coffee_grinding=request.getParameter("sp_coffee_grinding");
      String sp_dday=request.getParameter("sp_dday");
      String sp_period=request.getParameter("sp_period");

      //        
      SubPayDTO subPayDTO= new SubPayDTO();
      subPayDTO.setSp_mem_id(sp_mem_id);
      subPayDTO.setSp_coffee_name(sp_coffee_name);
      subPayDTO.setSp_coffee_taste(sp_coffee_taste);
      subPayDTO.setSp_coffee_grinding(sp_coffee_grinding);
      subPayDTO.setSp_dday(sp_dday);
      subPayDTO.setSp_period(sp_period);

      System.out.println("sp_mem_id:"+sp_mem_id);
      System.out.println("sp_coffee_name:"+sp_coffee_name);
      System.out.println("sp_coffee_taste:"+sp_coffee_taste);
      System.out.println("sp_coffee_grinding:"+sp_coffee_grinding);
      System.out.println("sp_dday:"+sp_dday);
      System.out.println("sp_period:"+sp_period);
      
      
      int su=subPaySerive.pay(subPayDTO);
      System.out.println("su:"+su);
      System.out.println("확인5");
      
      ModelAndView modelAndView = new ModelAndView();
      if(su>0) {
         modelAndView.setViewName("/bs_member/payCheck.do?coffee="+sp_coffee_name+"&taste="+sp_coffee_taste+"&grind="+sp_coffee_grinding);
         //modelAndView.setViewName("../bs_member/payCheck.jsp");
         
      }
      return modelAndView;
      
   }
   
   @RequestMapping(value="/bs_member/payCheck.do")
   public ModelAndView payCheck(HttpServletRequest request) {
      
        HttpSession session = request.getSession();
             // 한글 처리
                  try {
                     request.setCharacterEncoding("UTF-8");
                  } catch (UnsupportedEncodingException e) {
                     e.printStackTrace();
                  }
     
       String sp_mem_id = (String) session.getAttribute("mem_id");
       String cart_id=(String) session.getAttribute("mem_id");
       
       
       
       List<SubPayDTO> list=subPaySerive.payCheck(sp_mem_id);
       
    //결제확인 페이지에서 장바구니내역 출력하기
      
       String state="1";
      
       
       List<CartDTO> list2= cartService.cartShow(state, cart_id);
      // cartService.deleteAll(cart_id);
     
      ModelAndView modelAndView = new ModelAndView();
      modelAndView.addObject("list",list);
      modelAndView.addObject("list2",list2);
   
      
      modelAndView.setViewName("../bs_member/payCheck.jsp");
      return modelAndView;
   }
   
   /*
   @RequestMapping(value="/bs_member/buy.do")
   public ModelAndView buy(HttpServletRequest request)
   {
	   
	   HttpSession session = request.getSession();
       // 한글 처리
            try {
               request.setCharacterEncoding("UTF-8");
            } catch (UnsupportedEncodingException e) {
               e.printStackTrace();
            }
        String cart_id=(String) session.getAttribute("mem_id");   
        cartService.updateState(cart_id);
        
        ModelAndView modelAndView = new ModelAndView();
	   
        modelAndView.setViewName("/bs_member/payCheck.do");
   }*/
   
}

