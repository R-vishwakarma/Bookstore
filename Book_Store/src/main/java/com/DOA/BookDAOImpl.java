package com.DOA;

import java.sql.Connection;
import java.sql.PreparedStatement;

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

}
