package com.devglan.SpringBootDemo.controller;

import com.devglan.SpringBootDemo.model.User;
import com.devglan.SpringBootDemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public ResponseEntity<User> userProfile() {
        return ResponseEntity.ok(userService.getUser());
    }
}
