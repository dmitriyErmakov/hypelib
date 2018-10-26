package com.example.hypelib.controller;

import com.example.hypelib.util.Phrase;
import com.example.hypelib.domain.Role;
import com.example.hypelib.domain.User;
import com.example.hypelib.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserRepo userRepo;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model) {
        User userFromDb = userRepo.findByUsername(user.getUsername());

        if(userFromDb != null) {
            model.put("message", Phrase.USER_EXISTS.getValue());
            return "registration";
        }

        user.setActive(true);
        user.setRoleSet(Collections.singleton(Role.USER));
        userRepo.save(user);

        return "redirect:/login";
    }
}
