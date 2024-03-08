package External.Presentation.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import store_application.Entities.UserEntity;
import store_application.Model.User;
import store_application.Services.UserService;



@RestController
@CrossOrigin(origins = "*")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "getallusers", method = RequestMethod.GET)
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }

    @RequestMapping(value = "adduser", method = RequestMethod.POST)
    public String addUser(@RequestBody UserEntity user) {
        return userService.addUser(user);
    }

    @RequestMapping(value = "updateuser", method = RequestMethod.PUT)
    public String updateUser(@RequestBody UserEntity user) {
        return userService.updateUser(user);
    }

    @RequestMapping(value = "deleteuser", method = RequestMethod.DELETE)
    public String removeUser(@RequestBody UserEntity user) {
        return userService.removeUser(user);
    }
}
