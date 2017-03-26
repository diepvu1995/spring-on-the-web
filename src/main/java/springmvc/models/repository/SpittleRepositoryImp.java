package springmvc.models.repository;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Component;

import springmvc.models.Spittle;

@Component
public class SpittleRepositoryImp implements ISpittleRepository {
	private final List<Spittle> db = createSpittleList(100);

	@Override
	public List<Spittle> findSpittles(long max, int count) {
		List<Spittle> spittles = new ArrayList<Spittle>();
		spittles = db.stream().filter(e -> e.getId() < max)
				.collect(Collectors.toList());

		return spittles.size() > count ? spittles.subList(0, count) : spittles;
	}

	@Override
	public Spittle findOne(long spittleId) {
		List<Spittle> spittles = db.stream()
				.filter(e -> e.getId() == spittleId)
				.collect(Collectors.toList());
		return spittles.size() > 0 ? spittles.get(0) : null;
	}

	public List<Spittle> createSpittleList(int count) {
		List<Spittle> spittles = new ArrayList<Spittle>();
		for (int i = 0; i < count; i++) {
			spittles.add(new Spittle(Long.valueOf(i + 1), "Spittle" + i,
					new Date()));
		}
		return spittles;
	}

	@Override
	public List<Spittle> delete(long spittleId) {
		// xoa mot doi tuong, co id la spittleId
		db.removeIf(e -> e.getId() == spittleId);
		return db;
	}

}
