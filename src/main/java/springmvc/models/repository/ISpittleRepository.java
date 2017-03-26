package springmvc.models.repository;

import java.util.List;

import springmvc.models.Spittle;

public interface ISpittleRepository {
	List<Spittle> findSpittles(long max, int count);

	Spittle findOne(long spittleId);

	List<Spittle> delete(long spittleId);
	List<Spittle> createSpittleList(int count);
}
