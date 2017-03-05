package springmvc.models.repository;

import org.springframework.stereotype.Component;

import springmvc.models.Spitter;

@Component
public class SpitterRepositoryImp implements ISpitterRepository {

	@Override
	public Spitter save(Spitter spitter) {
		System.out.println("save " + spitter.getUsername());
		return null;
	}

	@Override
	public Spitter findByUsername(String username) {
		return new Spitter(1L, "aaaa", "123456", "asassss", "bbbbbb");
	}

}
