package springmvc.models.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Component;

import springmvc.models.Spitter;

@Component
public class SpitterRepositoryImp implements ISpitterRepository {
	private List<Spitter> spitters = new ArrayList<Spitter>();

	@Override
	public Spitter save(Spitter spitter) {
		spitters.add(spitter);
		return spitter;
	}

	@Override
	public Spitter findByUsername(String username) {
		// tim trong db
		Optional<Spitter> findFirst = spitters.stream()
				.filter(e -> e.getUsername().equals(username)).findFirst();
		return findFirst.isPresent() ? findFirst.get() : null;
	}

}
