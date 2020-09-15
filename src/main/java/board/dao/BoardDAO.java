package board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import board.bean.BoardDTO;

@Repository
public class BoardDAO {
   
   @Autowired
   private SqlSessionTemplate sqlSession;
   
   // 글 저장
   public int boardWrite(BoardDTO boardDTO) {
      return sqlSession.insert("mybatis.boardMapper.boardWrite", boardDTO);
   }
   
   // 목록보기 (5개씩, 페이징 블럭 3개)
   public List<BoardDTO> boardList(int startNum, int endNum) {
      // 데이터가 여러 개일 때는 map 클래스 지정
      Map<String, Integer> map = new HashMap<String, Integer>();
      map.put("startNum", startNum);
      map.put("endNum", endNum);
      return sqlSession.selectList("mybatis.boardMapper.boardList", map);
   }
   
   // 상세보기
   public BoardDTO boardView(int board_num) {
      return sqlSession.selectOne("mybatis.boardMapper.boardView", board_num);
   }
   
   // 조회수 증가
   public int updateHit(int board_num) {
      return sqlSession.update("mybatis.boardMapper.updateHit", board_num);
   }
   
   // 전체 목록 개수 구하기
   public int getTotalA() {
      return sqlSession.selectOne("mybatis.boardMapper.getTotalA");
   }
   
   // 글 삭제
   public int boardDelete(int board_num) {
      return sqlSession.delete("mybatis.boardMapper.boardDelete", board_num);
   }
   
}