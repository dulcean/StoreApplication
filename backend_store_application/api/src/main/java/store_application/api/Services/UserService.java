package store_application.api.Services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import store_application.api.Entities.UserEntity;
import store_application.api.Model.User;
import store_application.api.Repositories.UserRepository;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    public List<User> getAllUsers() {
        try {
            List<UserEntity> users = userRepository.findAll();
            List<User> customUsers = new ArrayList<>();
            users.stream().forEach(e -> {
                User user = new User();
                BeanUtils.copyProperties(e, user);
                customUsers.add(user);
            });
            return customUsers;
        } catch (Exception e) {
            throw e;
        }
    }

    public String addUser(UserEntity user) {
        try {
            if (!userRepository.existsByEmailAndPassword(user.getEmail(), user.getPassword())) {
                userRepository.save(user);
                return "Saved successfully";
            } else {
                return "This user is already SignUped";
            }
        } catch (Exception e) {
            throw e;
        }
    }

    public String removeUser(UserEntity user) {
        try {
            if (userRepository.existsByEmailAndPassword(user.getEmail(), user.getPassword())) {
                userRepository.delete(user);
                return "Removed successfully";
            } else {
                return "User does not exist";
            }
        } catch (Exception e) {
            throw e;
        }
    }

    public String updateUser(UserEntity user) {
        try {
            if (userRepository.existsById(user.getId())) {
                userRepository.save(user);
                return "User updated successfully";
            } else {
                return "User does not exist";
            }
        } catch (Exception e) {
            throw e;
        }
    }
}
