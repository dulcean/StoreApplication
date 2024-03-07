package External.Presentation.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import store_application.Entities.User;
import store_application.Webinars.Queries.Repositories.UserRepository;


@RestController
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping("/signup")
    public User Register(@RequestBody User user) {
        return userRepository.save(user);
    }

    @PostMapping("/login")
    public User Login(@RequestBody User user) {
        User oldUser = userRepository.findByEmailAndPassword(user.getEmail(), user.getPassword());
        return oldUser;
    }
}
