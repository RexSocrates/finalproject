package com.sa.finalproject.DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

import com.sa.finalproject.DAO.SupplierDAO;
import com.sa.finalproject.entity.Supplier;

public class SupplierDAOImpl implements SupplierDAO{
	private DataSource dataSource;
	private Connection conn = null ;
	private ResultSet rs = null ;
	private PreparedStatement smt = null ;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	//新增廠商
	public long insert(Supplier aSupplier) {
		long key = 0;
		String sql = "INSERT INTO Supplier (supplier_name, supplier_phone, supplier_address, supplier_level) VALUES(?, ?, ?, ?)";	
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			smt.setString(1, aSupplier.getSupplierName());
			smt.setString(2, aSupplier.getPhone());
			smt.setString(3, aSupplier.getAddress());
			smt.setString(4, aSupplier.getLevel());
			smt.executeUpdate();
			 
			ResultSet resultSet = smt.getGeneratedKeys();
			if(resultSet != null && resultSet.next()){
				key = resultSet.getLong(1);
			}
			resultSet.close();
			smt.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return key;
	}

	// 列出廠商清單
	public ArrayList<Supplier> getList() {
		String sql = "SELECT * FROM Supplier";
		ArrayList<Supplier> supplierList = new ArrayList<Supplier>(); 
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			rs = smt.executeQuery();
			ArrayList<Long> IDList = new ArrayList<Long>();
			while(rs.next()){
				IDList.add(rs.getLong("supplier_id"));
			}
			rs.close();
			smt.close();
			
			
			for(int i = 0; i < IDList.size(); i++) {
				Supplier currentSupplier = this.get(IDList.get(i));
				supplierList.add(currentSupplier);
			}
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return supplierList;
	}

	//列出特定廠商資料
	public Supplier get(long supplierID) {
		String sql = "SELECT * FROM Supplier WHERE supplier_id = ?";
		Supplier aSupplier = new Supplier();
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setLong(1,supplierID);
			rs = smt.executeQuery();
			if(rs.next()){				
				aSupplier.setSupplierID(supplierID);
				aSupplier.setSupplierName(rs.getString("supplier_name"));
				aSupplier.setPhone(rs.getString("supplier_phone"));
				aSupplier.setAddress(rs.getString("supplier_address"));
				aSupplier.setLevel(rs.getString("supplier_level"));
				
			}
			rs.close();
			smt.close();
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return aSupplier;
	}

	
	//變更廠商級數
	public void changeSupplierLevel(long supplierID, String newLevel) {
		String sql = "UPDATE Supplier SET supplier_level = ? WHERE supplier_id = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, newLevel);
			smt.setLong(2, supplierID);
			smt.close();
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		
	}

	// 列出有Remarks 的廠商，可能不需要此功能
	public ArrayList<Supplier> remarklist() {
		String sql = "SELECT * FROM PR WHERE supplier_id = ?";
		ArrayList<Supplier> supplierList = new ArrayList<Supplier>(); 
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			rs = smt.executeQuery();
			
			while(rs.next()){
				Supplier aSupplier = new Supplier(0,"","","","");
				aSupplier.setSupplierID(rs.getInt("supplier_id"));
				aSupplier.setSupplierName(rs.getString("supplier_name"));
				aSupplier.setPhone(rs.getString("supplier_phone"));
				aSupplier.setAddress(rs.getString("supplier_address"));
				aSupplier.setLevel(rs.getString("supplier_level"));
				supplierList.add(aSupplier);
			}
			rs.close();
			smt.close();
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return supplierList;
	}
}
