package com.myshop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.myshop.dto.Basket;
import com.myshop.vo.BasketVO;

public class BasketDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	//관리자 장바구니 보기
	public ArrayList<BasketVO> getBasketList(){
		ArrayList<BasketVO> basList = new ArrayList<BasketVO>();
		try {
			con = Oracle11.getConnection();
			pstmt = con.prepareStatement(Oracle11.BASKET_SELECT_ALL2);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BasketVO bas = new BasketVO();
				bas.setBnum(rs.getString("bnum"));
				bas.setId(rs.getString("id"));
				bas.setName(rs.getString("name"));
				bas.setPcode(rs.getString("pcode"));
				bas.setPname(rs.getString("pname"));
				bas.setAmount(rs.getInt("amount"));
				bas.setPrice(rs.getInt("price"));
				basList.add(bas);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(rs, pstmt, con);
		}
		return basList;
	}
	
	//해당 사용자 장바구니 보기
	public ArrayList<BasketVO> getByIdBasketList(String id){
		ArrayList<BasketVO> basList = new ArrayList<BasketVO>();
		try {
			con = Oracle11.getConnection();
			pstmt = con.prepareStatement(Oracle11.BASKET_SELECT_BYID2);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BasketVO bas = new BasketVO();
				bas.setBnum(rs.getString("bnum"));
				bas.setId(rs.getString("id"));
				bas.setName(rs.getString("name"));
				bas.setPcode(rs.getString("pcode"));
				bas.setPname(rs.getString("pname"));
				bas.setAmount(rs.getInt("amount"));
				bas.setPrice(rs.getInt("price"));
				basList.add(bas);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(rs, pstmt, con);
		}
		return basList;
	}
	
	//해당 상품별 장바구니 정보 조회
	public ArrayList<Basket> getByProductBasketList(String pcode){
		ArrayList<Basket> basList = new ArrayList<Basket>();
		try {
			con = Oracle11.getConnection();
			pstmt = con.prepareStatement(Oracle11.BASKET_SELECT_BYPRODUCT);
			pstmt.setString(1, pcode);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Basket bas = new Basket();
				bas.setBnum(rs.getString("bnum"));
				bas.setId(rs.getString("id"));
				bas.setPcode(rs.getString("pcode"));
				bas.setAmount(rs.getInt("amount"));
				basList.add(bas);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(rs, pstmt, con);
		}
		return basList;
	}
	
	//장바구니 상세보기
	public Basket getBasketDetail(String bnum){
		Basket bas = new Basket();
		try {
			con = Oracle11.getConnection();
			pstmt = con.prepareStatement(Oracle11.BASKET_SELECT_BYBNUM);
			pstmt.setString(1, bnum);
			rs = pstmt.executeQuery();
			if(rs.next()){
				bas.setBnum(rs.getString("bnum"));
				bas.setId(rs.getString("id"));
				bas.setPcode(rs.getString("pcode"));
				bas.setAmount(rs.getInt("amount"));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(rs, pstmt, con);
		}
		return bas;
	}
	
	//장바구니 담기
	public int insertBasket(Basket bas){
		int cnt = 0;
		String bnum = createBnum();
		try {
			con = Oracle11.getConnection();
			pstmt = con.prepareStatement(Oracle11.INSERT_BASKET);
			pstmt.setString(1, bnum);
			pstmt.setString(2, bas.getId());
			pstmt.setString(3, bas.getPcode());
			pstmt.setInt(4, bas.getAmount());
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(pstmt, con);
		}
		return cnt;
	}
	
	public String createBnum(){
		String bnum = "";
		int tmp;
		try {
			con = Oracle11.getConnection();
			pstmt = con.prepareStatement(Oracle11.BNUM_GENERATOR);
			rs = pstmt.executeQuery();
			if(rs.next()){
				bnum = rs.getString("bnum");
			}
			if(bnum.equals("")){
				bnum="10010";
			}else{
				tmp = Integer.parseInt(bnum) + 1;
				bnum = tmp + "";	
			}
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(rs, pstmt, con);
		}
		
		return bnum; 
	}
	
	//장바구니 삭제 
	public int deleteBasket(String bnum){
		int cnt = 0;
		try {
			con = Oracle11.getConnection();
			pstmt = con.prepareStatement(Oracle11.DELETE_BASKET);
			pstmt.setString(1, bnum);
			cnt = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(pstmt, con);
		}
		return cnt;
	}
	
}
