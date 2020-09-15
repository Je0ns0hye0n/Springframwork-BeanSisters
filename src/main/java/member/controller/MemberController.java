package member.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;



@Controller  
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	//�빖�뱾�윭 留ㅼ묶 �겢�옒�뒪 �꽕�젙
		@RequestMapping(value = "/bs_member/login.do")
		public ModelAndView login(HttpServletRequest request) {
		 	// �뜲�씠�꽣
			String id = request.getParameter("mem_id");
			String pwd = request.getParameter("mem_pw1");
			// DB
			//MemberDAO memberDAO = new MemberDAO();
			String name = memberService.login(id, pwd);
			// �솕硫� �꽕鍮꾧쾶�씠�뀡
			ModelAndView modelAndView = new ModelAndView();
			
			if(name == null) {	// 濡쒓렇�씤 �떎�뙣
				modelAndView.setViewName("loginForm.jsp");
			} else {			// 濡쒓렇�씤 �꽦怨�
				HttpSession session = request.getSession();
				session.setAttribute("mem_id", id);
				session.setAttribute("name", name);
				// sendRedirect 諛⑹떇�쓣 �뿰�뒿�븯湲� �쐞�빐 �씪遺��윭 �궗�슜�븿
				modelAndView.setViewName("redirect:../main_subscription/index.jsp?pg=1");
				//viewPage = "/board/boardList.do?pg=1";
			}
			return modelAndView;
		}
		
		
		//�빖�뱾�윭 留ㅼ묶 �겢�옒�뒪 �꽕�젙
		@RequestMapping(value = "/bs_member/sign.do")
		public ModelAndView sign(HttpServletRequest request) {
			  //�뜲�씠�꽣		   
			  String name = request.getParameter("name");
			  String mem_id = request.getParameter("mem_id");
			  String mem_pw1 = request.getParameter("mem_pw1");
			  String phone = request.getParameter("phone");
			  int age_group = Integer.parseInt(request.getParameter("age_group"));
			  String addr = request.getParameter("addr");
			   
			  // DB
			  MemberDTO memberDTO= new MemberDTO();
			  memberDTO.setName(name);
			  memberDTO.setMem_id(mem_id);
			  memberDTO.setMem_pw1(mem_pw1);
			  memberDTO.setPhone(phone);
			  memberDTO.setAge_group(age_group);
			  memberDTO.setAddr(addr);
			   
			  //MemberDAO memberDAO=new MemberDAO();
			  int su= memberService.mem_write(memberDTO);
			 
			  //�솕硫대궡鍮꾧쾶�씠�뀡
			  ModelAndView modelAndView = new ModelAndView();
				
			  if(su==0) {	// �솕�썝媛��엯 �떎�뙣
					modelAndView.setViewName("signForm.jsp");
				} else {			// 濡쒓렇�씤 �꽦怨�
				/*	HttpSession session = request.getSession();
					session.setAttribute("memId", id);
					session.setAttribute("memName", name);
					// sendRedirect 諛⑹떇�쓣 �뿰�뒿�븯湲� �쐞�빐 �씪遺��윭 �궗�슜�븿
	*/				modelAndView.setViewName("redirect:../bs_member/loginForm.jsp");
					//viewPage = "/board/boardList.do?pg=1";
				}
				return modelAndView;
			}
			
		//회원정보 수정 페이지
        @RequestMapping(value = {"/bs_member/memberModifyForm.do","/bs_member/getMem.do"})
        public ModelAndView getMember(HttpServletRequest request) {
           
           HttpSession session = request.getSession();
           
           // 한글 처리
                try {
                   request.setCharacterEncoding("UTF-8");
                } catch (UnsupportedEncodingException e) {
                   e.printStackTrace();
                }
                
                String mem_id = (String) session.getAttribute("mem_id");
                MemberDTO memberDTO= memberService.getMember(mem_id);
                
                ModelAndView modelAndView = new ModelAndView();
                modelAndView.addObject("memberDTO",memberDTO);
                if(request.getServletPath().equals("/bs_member/memberModifyForm.do")) {
                   
                   modelAndView.setViewName("../bs_member/memberModify.jsp");
                }
                else if(request.getServletPath().equals("/bs_member/getMem.do")) {
                   modelAndView.setViewName("../main_subscription/payment.jsp");
                }
                
                return modelAndView;
           }
	          
		//�빖�뱾�윭 留ㅼ묶 �겢�옒�뒪 �꽕�젙
		@RequestMapping(value = "/bs_member/memberModify.do")
		public ModelAndView modify(HttpServletRequest request) {
   		
			  //�뜲�씠�꽣		   
			  String name = request.getParameter("name");
			  String mem_id = request.getParameter("mem_id");
			  String mem_pw1 = request.getParameter("mem_pw1");
			  String phone = request.getParameter("phone");
			  int age_group = Integer.parseInt(request.getParameter("age_group"));
			  String addr = request.getParameter("addr");
		
			  // DB
			  MemberDTO memberDTO= new MemberDTO();
			  memberDTO.setName(name);
			  memberDTO.setMem_id(mem_id);
			  memberDTO.setMem_pw1(mem_pw1);
			  memberDTO.setPhone(phone);
			  memberDTO.setAge_group(age_group);
			  memberDTO.setAddr(addr);
		
			  //MemberDAO memberDAO=new MemberDAO();
			  int su= memberService.modify(memberDTO);
			  //�솕硫대궡鍮꾧쾶�씠�뀡
			  ModelAndView modelAndView = new ModelAndView();
				
			  if(su==0) {	// �닔�젙 �떎�뙣
					modelAndView.setViewName("../main_subscription/index.jsp");
					System.out.println("�닔�젙 �떎�뙣");
				} else {			//�닔�젙 �꽦怨�
				/*	HttpSession session = request.getSession();
					session.setAttribute("memId", id);
					session.setAttribute("memName", name);
					// sendRedirect 諛⑹떇�쓣 �뿰�뒿�븯湲� �쐞�빐 �씪遺��윭 �궗�슜�븿
	*/				modelAndView.setViewName("redirect:../main_subscription/index.jsp");
					//viewPage = "/board/boardList.do?pg=1";
				}
				return modelAndView;
			}

		@RequestMapping(value = "/bs_member/delete.do")
		public ModelAndView delete(HttpServletRequest request) {
			 HttpSession session = request.getSession();
			 
			  // 한글 처리
             try {
                request.setCharacterEncoding("UTF-8");
             } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
             }
             String mem_id = (String) session.getAttribute("mem_id");
             int su= memberService.mem_delete(mem_id);
             
             ModelAndView modelAndView = new ModelAndView();  
             if(su==0) {	//회원정보 삭제 실패 
					modelAndView.setViewName("../main_subscription/index.jsp");		
				} else {   //회원정보 삭제 상공
					modelAndView.setViewName("redirect:../bs_member/mem_delete.jsp");
				}
				return modelAndView;
            
		}
}
