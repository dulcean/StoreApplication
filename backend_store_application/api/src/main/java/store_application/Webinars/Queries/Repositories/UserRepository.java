package store_application.Webinars.Queries.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import store_application.Entities.User;


public interface UserRepository extends JpaRepository<User, Integer> {
    User findByEmailAndPassword(String email, String password);
}
