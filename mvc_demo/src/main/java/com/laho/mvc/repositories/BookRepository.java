package com.laho.mvc.repositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.laho.mvc.models.Book;
@Repository
public interface BookRepository extends CrudRepository<Book, Long>{

    // Get All
    List<Book> findAll();

    // Get by description
    List<Book> findByDescriptionContaining(String search);

    // Get by String in title
    Long countByTitleContaining(String search);

    // Delete - by title query
    Long deleteByTitleStartingWith(String search);

    //Delete by id
    Optional<Book> findById(Long id);
	void deleteById(Long id);
}
