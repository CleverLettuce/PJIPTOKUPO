package hr.fer.webshop.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;

public class JpaService<T> {

	@Autowired
	protected JpaRepository<T, Long> repository;
	
	public List<T> findAll(){
		return repository.findAll();
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
