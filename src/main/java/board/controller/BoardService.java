 package board.controller;


import java.util.List;

import board.bean.BoardDTO;

public interface BoardService {
	
	 // 글 저장
	   public int boardWrite(BoardDTO boardDTO); 

	   // 목록보기 (10개씩, 페이징 블럭 3개)
	   //넘버, 제목, 조회수 
	   public List<BoardDTO> boardList(int startNum, int endNum); 

	   // 상세보기
	   public BoardDTO boardView(int board_num);   //수정

	   // 조회수 증가
	   public int updateHit(int board_num); 

	   // 전체 목록 갯수 구하기
	   public int getTotalA();
	   // 삭제
	   public int boardDelete(int board_num); 
}
