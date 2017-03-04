package springmvc.models.repository;

import java.util.List;

import org.springframework.stereotype.Component;

import springmvc.models.Spittle;

@Component
public class SpittleRepositoryImp implements ISpittleRepository {

	@Override
	public List<Spittle> findSpittles(long max, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Spittle findOne(long spittleId) {
		// TODO Auto-generated method stub
		return null;
	}

}
