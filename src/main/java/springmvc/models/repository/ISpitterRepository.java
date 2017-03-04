package springmvc.models.repository;

import springmvc.models.Spitter;

public interface ISpitterRepository {

	Spitter save(Spitter spitter);

	Spitter findByUsername(String username);

}
