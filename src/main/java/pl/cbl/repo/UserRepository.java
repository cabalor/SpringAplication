package pl.cbl.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.cbl.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findUserByLogin(String login);

}
