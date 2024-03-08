package store_application.api.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import store_application.api.Entities.UserEntity;
import store_application.api.Model.User;
import store_application.api.Services.UserService;



@Component
@RestController
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/GetUsers")
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }

    @PostMapping("/AddUser")
    public String addUser(@RequestBody UserEntity user) {
        return userService.addUser(user);
    }

    @PutMapping("/UpdateUser")
    public String updateUser(@RequestBody UserEntity user) {
        return userService.updateUser(user);
    }

    @DeleteMapping("/DeleteUser")
    public String removeUser(@RequestBody UserEntity user) {
        return userService.removeUser(user);
    }
}
