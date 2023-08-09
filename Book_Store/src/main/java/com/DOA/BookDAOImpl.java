package com.DOA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.entity.BookDtls;

public class BookDAOImpl implements BookDAO {

	private Connection conn;

	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean addBooks(BookDtls b) {

		boolean f = false;
		try {

			String sql = "insert into book_dtls(bookName,price,bookCategory,status,photo,user_email) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getPrice());
			ps.setString(3, b.getBookCategory());
			ps.setString(4, b.getStatus());
			ps.setString(5, b.getPhotoName());
			ps.setString(6, b.getEmail());
			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<BookDtls> getAllBooks() {
		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b = null;

		try {

			String sql = "select * from book_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setBookCategory(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				b.setEmail(rs.getString(7));
				list.add(b);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	@Override
	public BookDtls getBookId(int id) {
		BookDtls b = null;
		try {

			String sql = "select * from book_dtls where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setBookCategory(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				b.setEmail(rs.getString(7));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return b;
	}

	@Override
	public boolean updateEditBooks(BookDtls b) {

		boolean f = false;

		try {
			String sql = "update book_dtls set bookname=?,price=?,status=? where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getPrice());
			ps.setString(3, b.getStatus());
			ps.setInt(4, b.getBookId());
			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	@Override
	public boolean deleteBooks(int id) {
	boolean f=false;
		
	try {
		
		String sql="delete from book_dtls where bookId=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
	    int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		return f;
	}

	
	
	
}
