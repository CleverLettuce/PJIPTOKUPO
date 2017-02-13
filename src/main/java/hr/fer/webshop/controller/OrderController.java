package hr.fer.webshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import hr.fer.webshop.models.Order;
import hr.fer.webshop.services.OrderService;

@RestController
@RequestMapping("/orders")
public class OrderController {

	@Autowired
	private OrderService service;
	
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public Order addProduct(@PathVariable Long id, @RequestBody Order order){
		return service.addProduct(id, order);
	}
}
