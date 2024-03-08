package store_application.Webinars.Queries.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import store_application.Entities.UserEntity;


@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    public UserRepository findByEmailAndPassword(String email, String password);
    public boolean existsByEmailAndPassword(String email, String password);
    public boolean existsByID(Integer Id);
}
