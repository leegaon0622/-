package order;

public class orderDAO {
	private String orderId;
	private int order_seq_num;
	private String productId;
	private String productName;
	private int price;
	private int order_Qty;
	private String productDist;
	private String productInfo;
	private String selected_Opt;
	private String fullname;
	private String userid;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public int getOrder_seq_num() {
		return order_seq_num;
	}
	public void setOrder_seq_num(int order_seq_num) {
		this.order_seq_num = order_seq_num;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getOrder_Qty() {
		return order_Qty;
	}
	public void setOrder_Qty(int order_Qty) {
		this.order_Qty = order_Qty;
	}
	public String getProductDist() {
		return productDist;
	}
	public void setProductDist(String productDist) {
		this.productDist = productDist;
	}
	public String getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	public String getSelected_Opt() {
		return selected_Opt;
	}
	public void setSelected_Opt(String selected_Opt) {
		this.selected_Opt = selected_Opt;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getDeliver_msg() {
		return deliver_msg;
	}
	public void setDeliver_msg(String deliver_msg) {
		this.deliver_msg = deliver_msg;
	}
	public int getDeliver_situ() {
		return deliver_situ;
	}
	public void setDeliver_situ(int deliver_situ) {
		this.deliver_situ = deliver_situ;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getBillingDate() {
		return billingDate;
	}
	public void setBillingDate(String billingDate) {
		this.billingDate = billingDate;
	}
	public String getCal_info() {
		return cal_info;
	}
	public void setCal_info(String cal_info) {
		this.cal_info = cal_info;
	}
	private String username;
	private String email;
	private int tel;
	private String useraddress;
	private String postcode;
	private String orderDate;
	private String deliver_msg;
	private int deliver_situ;
	private int totalAmount;
	private String billingDate;
	private String cal_info;
}
