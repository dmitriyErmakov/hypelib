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

@Controller
@AllArgsConstructor
public class MainController {
    private final BookRepo bookRepo;

    @GetMapping("/")
    public String greeting() {
        return "greeting";
    }

    @GetMapping("/main")
    public String main() {
        return "main";
    }

    @PostMapping("/main")
    public String addBook(
            @AuthenticationPrincipal User user,
            @ModelAttribute Book book
    ) {

        book.setPublisher(user);
        bookRepo.save(book);

        return "main";
    }
}
