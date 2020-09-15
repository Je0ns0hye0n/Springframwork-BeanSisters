package board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import board.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
   
   @Autowired
   private BoardDAO boardDAO;

   @Override
   public int boardWrite(BoardDTO boardDTO) {
      return boardDAO.boardWrite(boardDTO);
   }

   @Override
   public List<BoardDTO> boardList(int startNum, int endNum) {
      return boardDAO.boardList(startNum, endNum);
   }

   @Override
   public BoardDTO boardView(int board_num) {
      return boardDAO.boardView(board_num);
   }

   @Override
   public int updateHit(int board_num) {
      return boardDAO.updateHit(board_num);
   }

   @Override
   public int getTotalA() {
      return boardDAO.getTotalA();
   }

   @Override
   public int boardDelete(int board_num) {
      return boardDAO.boardDelete(board_num);
   }
   
}