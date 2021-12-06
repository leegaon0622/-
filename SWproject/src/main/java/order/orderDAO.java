package order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import util.DatabaseUtil;

public class orderDAO{
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public void insertOrder (order order) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			Connection conn =DatabaseUtil.getConnection(); 
			PreparedStatement pstmt=conn.prepareStatement(SQL); 
			sql = "insert tblOrder(id,productNo,quantity,date,state)"
					+ "values(?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, order.getProductId());//주문 id
			pstmt.setString(2, order.getProductName());//상품 번호
			pstmt.setInt(3, order.getQuantity());//주문수량
			pstmt.setString(4, UtilMgr.getDay());
			//접수중(1), 접수(2), 입금확인(3), 배송준비(4), 배송중(5), 완료(6)
			pstmt.setString(5, "1");
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return;
	}

//Order List : 주문 리스트
	public Vector<order> getOrderList(String id){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<order> vlist = new Vector<order>();
		try {
			con = pool.getConnection();
			sql = "select * from tblOrder where id=? order by no desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				order order = new order();
				order.setNo(rs.getInt("no"));//주문번호
				order.setId(rs.getString("id"));//주문한 사람
				order.setProductNo(rs.getInt("productNo"));//주문상품번호
				order.setQuantity(rs.getInt("quantity"));//주문수량
				order.setDate(rs.getString("date"));//주문날짜
				order.setState(rs.getString("state"));//주문상태
				vlist.addElement(order);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}

	//admin mode...
	//Order All List : 모든 고객의 주문 리스트
	
	//Order Detail : 주문 상세정보
	
	//Order Update : 주문 상태 수정
	//접수중(1), 접수(2), 입금확인(3), 배송준비(4), 배송중(5), 완료(6)
	
	//Order Delete : 주문삭제
	
}