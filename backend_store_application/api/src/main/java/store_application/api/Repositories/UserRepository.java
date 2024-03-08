package store_application.api.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import store_application.api.Entities.UserEntity;


@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    public boolean existsByEmailAndPassword(String email, String password);
    public boolean existsById(Integer id);
}
