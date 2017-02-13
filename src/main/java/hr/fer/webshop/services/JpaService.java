package hr.fer.webshop.services;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;

public class JpaService<T> {

	@Autowired
	protected JpaRepository<T, Long> repository;
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public List<T> findAll(){
		logger.debug("JpaService.findAll() init");
		List<T> results = repository.findAll();
		int resultCount = results == null ? 0 : results.size();
		
		logger.debug("Found {} rows", resultCount);
		return results;
	}
	
	public T findOne(Long id){
		return repository.findOne(id);
	}
	
	public T save(T entity){
		return repository.save(entity);
	}
	
	public void delete(T entity){
		repository.delete(entity);
	}
	
}
