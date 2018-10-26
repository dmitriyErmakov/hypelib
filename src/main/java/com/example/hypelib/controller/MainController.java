package com.example.hypelib.controller;

import com.example.hypelib.domain.Book;
import com.example.hypelib.domain.User;
import com.example.hypelib.repo.BookRepo;
import lombok.AllArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

@Controller
@AllArgsConstructor
public class MainController {
    private final BookRepo bookRepo;

    @GetMapping("/")
    public String greeting() {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(Map<String, Object> model) {
        putBookListIntoModel(model);
        return "main";
    }

    @PostMapping("/main")
    public String addBook(
            @AuthenticationPrincipal User user,
            @ModelAttribute Book book,
            Map<String, Object> model
    ) {

        book.setPublisher(user);
        bookRepo.save(book);

        putBookListIntoModel(model);
        return "main";
    }

    private void putBookListIntoModel(Map<String, Object> model) {
        Iterable<Book> bookList = bookRepo.findAll();
        model.put("bookList", bookList);
    }
}
