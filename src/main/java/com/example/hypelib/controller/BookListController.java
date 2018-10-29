package com.example.hypelib.controller;

import com.example.hypelib.domain.Book;
import com.example.hypelib.repo.BookRepo;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
@AllArgsConstructor
public class BookListController {
    private final BookRepo bookRepo;

    @GetMapping("/booklist")
    public String bookList(Map<String, Object> model) {
        Iterable<Book> bookList = bookRepo.findAll();
        model.put("bookList", bookList);
        return "booklist";
    }
}
