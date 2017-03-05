package springmvc.models.repository;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import springmvc.models.Spittle;

@Component
public class SpittleRepositoryImp implements ISpittleRepository {
	private final List<Spittle> db = createSpittleList(100);

	@Override
	public List<Spittle> findSpittles(long max, int count) {
		return createSpittleList(count);
	}

	@Override
	public Spittle findOne(long spittleId) {
		// TODO Auto-generated method stub
		return null;
	}

	private List<Spittle> createSpittleList(int count) {
		List<Spittle> spittles = new ArrayList<Spittle>();
		for (int i = 0; i < count; i++) {
			spittles.add(new Spittle(Long.valueOf(238900 - i), "Spittle" + i,
					new Date()));
		}
		return spittles;

	}

}
