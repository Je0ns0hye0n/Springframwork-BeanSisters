 package board.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
import board.dao.BoardDAO;

@Controller
public class BoardController {
   
   
	
	@Autowired
	private BoardService boardService;
	
	// BoardListController
   @RequestMapping(value = "/bs_board/boardList.do")
   public ModelAndView boardList(HttpServletRequest request) {
      // �뜲�씠�꽣 泥섎━
      int pg = Integer.parseInt(request.getParameter("pg"));
      
      // 紐⑸줉 : 1�럹�씠吏� �떦 5媛쒖뵫
      int endNum = pg * 5;
      int startNum = endNum - 4;
      
      // DB
    //BoardDAO boardDAO = new BoardDAO();  --@Autowired濡� �씤�븳 二쇱꽍 泥섎━
      List<BoardDTO> list = boardService.boardList(startNum, endNum);
      
      // paging : 3釉붾윮�뵫
      int totalA = boardService.getTotalA();   // 珥� 湲� �닔
      int totalP = (totalA + 4) / 5;      // 珥� �럹�씠吏� �닔
      
      int startPage = (pg-1)/3*3 + 1;
      int endPage = startPage + 2;
      if(endPage > totalP) endPage = totalP;
      
      // �솕硫� �꽕鍮꾧쾶�씠�뀡
      ModelAndView modelAndView = new ModelAndView();
      modelAndView.addObject("pg", pg);            // request.setAttribute("pg", pg);
      modelAndView.addObject("list", list);         // request.setAttribute("list", list);
      modelAndView.addObject("totalP", totalP);      // request.setAttribute("totalP", totalP);
      modelAndView.addObject("endPage", endPage);      // request.setAttribute("endPage", endPage);
      modelAndView.addObject("startPage", startPage);   // request.setAttribute("startPage", startPage);
      modelAndView.setViewName("boardList.jsp");
      return modelAndView;
   }
   
   // BoardViewController
   @RequestMapping(value = "/bs_board/boardView.do")
   public ModelAndView boardView(HttpServletRequest request) {
      // �뜲�씠�꽣
      int board_num = Integer.parseInt(request.getParameter("board_num"));
      int pg = Integer.parseInt(request.getParameter("pg"));
      
      // DB
     // BoardDAO boardDAO = new BoardDAO();
      
      // 議고쉶�닔 利앷�
      boardService.updateHit(board_num);
      BoardDTO boardDTO = boardService.boardView(board_num);
      
      // �솕硫� �꽕鍮꾧쾶�씠�뀡 = �뜲�씠�꽣 怨듭쑀 + �뙆�씪 �씠由� 由ы꽩
      ModelAndView modelAndView = new ModelAndView();
      modelAndView.addObject("pg", pg);               // request.setAttribute("pg", pg);
      modelAndView.addObject("board_num", board_num);               // request.setAttribute("seq", seq);
      modelAndView.addObject("boardDTO", boardDTO);      // request.setAttribute("boardDTO", boardDTO);
      modelAndView.setViewName("boardView.jsp");
      
      return modelAndView;
   }
   
   // BoardWriteFormController
   @RequestMapping(value = "/bs_board/boardWriteForm.do")
   public ModelAndView boardWriteForm() {
      // �솕硫� �꽕鍮꾧쾶�씠�뀡
      ModelAndView modelAndView = new ModelAndView();
      modelAndView.setViewName("boardWriteForm.jsp");
      return modelAndView;    // "/board/boardWriteForm.jsp";
   }
   
   // BoardWriteController
   @RequestMapping(value = "/bs_board/boardWrite.do")
   public ModelAndView boardWrite(HttpServletRequest request) {
    
	   HttpSession session = request.getSession();
      
      // �한글처리
      try {
         request.setCharacterEncoding("UTF-8");
      } catch (UnsupportedEncodingException e) {
         e.printStackTrace();
      }
      
      // �뜲�씠�꽣
      String board_title = request.getParameter("subject");
      //request.getParameter("subject");  �뿬湲곗꽌subject�뒗 form �뿉�꽌 �꽆�뼱�삤�뒗 name�쓣 �쑜�븿.
      String board_content = request.getParameter("board_content");
      String board_id = (String) session.getAttribute("mem_id");
      System.out.println("제목 "+ board_title);
      System.out.println("내용"+board_content);
      System.out.println("아이디 "+board_id);
      
      // DB
      BoardDTO boardDTO = new BoardDTO();
      boardDTO.setBoard_content(board_content);
      boardDTO.setBoard_title(board_title);
      boardDTO.setBoard_id(board_id);
 
      //BoardDAO boardDAO = new BoardDAO();
      int su = boardService.boardWrite(boardDTO);
      System.out.println(su);
      
      // �솕硫� �꽕鍮꾧쾶�씠�뀡 = �뜲�씠�꽣 怨듭쑀 + view 泥섎━ �뙆�씪 �씠由�
      ModelAndView modelAndView = new ModelAndView();
       modelAndView.addObject("su", su);   // request.setAttribute("su", su);
      modelAndView.setViewName("boardWrite.jsp");
      return modelAndView;  
   }
   
   // BoardDeleteController
   // @RequestMapping �씠 遺숈�  �븿�닔�쓽 留ㅺ컻蹂��닔瑜� 愿�由ы븯�뒗 Command�씪�뒗 媛앹껜�뒗 留ㅺ컻蹂��닔�뿉 �꽕�젙�맂 �겢�옒�뒪瑜� 留뚮뱾�뼱�꽌 二쇱엯(=���엯)�빐以��떎.
   @RequestMapping(value = "/bs_board/boardDelete.do")
   public ModelAndView boardDelete(HttpServletRequest request) { // 留ㅺ컻蹂��닔瑜� �씠�젃寃뚮룄 �벝 �닔 �엳�쓬, but 媛��룆�꽦 �븣臾몄뿉 �썝�옒 �띁�뜕 �삎�깭 沅뚯옣
        // �뜲�씠�꽣
      int board_num = Integer.parseInt(request.getParameter("board_num"));
      int pg = Integer.parseInt(request.getParameter("pg"));
      
      // DB
      // BoardDAO boardDAO = new BoardDAO();
      int su = boardService.boardDelete(board_num);
      
      // �솕硫� �꽕鍮꾧쾶�씠�뀡
      ModelAndView modelAndView = new ModelAndView();
      modelAndView.addObject("pg", pg);               // request.setAttribute("pg", pg);
      modelAndView.addObject("su", su);               // request.setAttribute("su", su);
      modelAndView.setViewName("boardDelete.jsp");
      
      return modelAndView;
   }

}