package com.devglan.SpringBootDemo.service;

import com.devglan.SpringBootDemo.dto.LoginDto;
import com.devglan.SpringBootDemo.model.User;

public interface UserService {

    String login(LoginDto loginDto);

    User getUser();
}
