package s22.PhoneStore20.domain;

import org.springframework.data.repository.CrudRepository;


public interface ApplicationUserRepository extends CrudRepository<Application_User, Long> {
				
	Application_User findByUsername(String username);

}
