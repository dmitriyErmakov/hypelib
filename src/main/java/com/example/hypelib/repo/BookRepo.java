package com.example.hypelib.repo;

import com.example.hypelib.domain.Book;
import org.springframework.data.repository.CrudRepository;

public interface BookRepo extends CrudRepository<Book, Long> {
}
