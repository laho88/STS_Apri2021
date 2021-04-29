package com.laho.mvc.services;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;
import com.laho.mvc.models.Book;
import com.laho.mvc.repositories.BookRepository;

@Service
public class BookService {
	// dependency injec.
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    // Get All
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }

    // Add/Create new book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }

    // Get by id
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    //Update/Edit
    public Book updateBook(Long id, String title, String description, String language, Integer numOfPages) {
    	Optional <Book> update = bookRepository.findById(id);
    	if(update != null && update.isPresent()) {
    		update.get().setTitle(title);
    		update.get().setDescription(description);
    		update.get().setNumberOfPages(numOfPages);
    		bookRepository.save(update.get());
    		return update.get();
    	}
    	return null;        
    }

    // Delete
    public void deleteBook(Long id) {
    	bookRepository.deleteById(id);
    }
}
