package com.devglan.SpringBootDemo.repo;

import com.devglan.SpringBootDemo.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);
}
