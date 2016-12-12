package hr.fer.webshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hr.fer.webshop.services.JpaService;

public class JpaRestController<T> {
	
	@Autowired
	protected JpaService<T> service;
	
	@RequestMapping(method = RequestMethod.GET)
	public List<T> findAll() {
		return service.findAll();
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public T findOne(@PathVariable Long id) {
		return service.findOne(id);
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public T save(@RequestBody T entity) {
		return service.save(entity);
	}
	
	@RequestMapping(method = RequestMethod.PUT)
	public T update(@RequestBody T entity) {
		return service.save(entity);
	}
	
	@RequestMapping(method = RequestMethod.DELETE)
	public void delete(@RequestBody T entity) {
		service.delete(entity);
	}

}
