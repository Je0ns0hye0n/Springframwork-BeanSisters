package board.bean;

public class BoardDTO {
   private int board_num;
   private String board_content;
   private String board_title;
   private int board_count;
   private String board_img;
   private String board_id;
   
   
   public String getBoard_id() {
	return board_id;
}
public void setBoard_id(String board_id) {
	this.board_id = board_id;
}
public int getBoard_num() {
      return board_num;
   }
   public void setBoard_num(int board_num) {
      this.board_num = board_num;
   }
   public String getBoard_content() {
      return board_content;
   }
   public void setBoard_content(String board_content) {
      this.board_content = board_content;
   }
   public String getBoard_title() {
      return board_title;
   }
   public void setBoard_title(String board_title) {
      this.board_title = board_title;
   }
   public int getBoard_count() {
      return board_count;
   }
   public void setBoard_count(int board_count) {
      this.board_count = board_count;
   }
   public String getBoard_img() {
      return board_img;
   }
   public void setBoard_img(String board_img) {
      this.board_img = board_img;
   }

}