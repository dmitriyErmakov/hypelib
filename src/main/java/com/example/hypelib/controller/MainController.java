package com.example.hypelib.controller;

import com.example.hypelib.domain.Book;
import com.example.hypelib.domain.User;
import com.example.hypelib.repo.BookRepo;
import com.example.hypelib.util.Util;
import lombok.AllArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
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
        Iterable<Book> bookList = bookRepo.findAll();

        model.put("bookList", bookList);

        return "main";
    }

    @PostMapping("/main")
    public String addBook(
            @AuthenticationPrincipal User user,
            @RequestParam String title,
            @RequestParam String author,
            @RequestParam String yearOfPublication,
            @RequestParam(required = false) String description,
            @RequestParam(name = "read") List<String> checkboxValueList,
            Map<String, Object> model
    ) {
        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setYearOfPublication(yearOfPublication);
        book.setDescription(description);
        book.setRead(Util.checkFirstValue(checkboxValueList));
        book.setPublisher(user);

        bookRepo.save(book);

        Iterable<Book> bookList = bookRepo.findAll();

        model.put("bookList", bookList);

        return "main";
    }
}
