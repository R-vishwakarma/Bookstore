package com.DOA;

import java.util.List;

import com.entity.BookDtls;

public interface BookDAO {
     
	public boolean addBooks(BookDtls b);
	
	public List<BookDtls>getAllBooks();
	
	
}
