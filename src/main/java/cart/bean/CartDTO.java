package cart.bean;

public class CartDTO {

	private String cart_id;//mem_id
	private int cart_num;
	private int cart_price;
	private int cart_count;
	private int ind_t_price; // 占쎈릭占쎄돌占쎌벥 占쎌젫占쎈�뱄옙�벥 total
	private String c_pro_name;
	private String cart_class;
	private String state;// �옣諛붽뎄�땲硫� 0 寃곗젣硫� 1
	
	
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public int getCart_price() {
		return cart_price;
	}
	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}
	public int getCart_count() {
		return cart_count;
	}
	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}
	public int getInd_t_price() {
		return ind_t_price;
	}
	public void setInd_t_price(int ind_t_price) {
		this.ind_t_price = ind_t_price;
	}
	public String getC_pro_name() {
		return c_pro_name;
	}
	public void setC_pro_name(String c_pro_name) {
		this.c_pro_name = c_pro_name;
	}
	public String getCart_class() {
		return cart_class;
	}
	public void setCart_class(String cart_class) {
		this.cart_class = cart_class;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	

	
}
