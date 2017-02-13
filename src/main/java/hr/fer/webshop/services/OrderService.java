package hr.fer.webshop.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;


import hr.fer.webshop.models.Order;
import hr.fer.webshop.models.Product;
import hr.fer.webshop.repositories.ProductRepository;

@Service
@Transactional
public class OrderService extends JpaService<Order> {

	@Autowired
	protected ProductRepository productRepository;
	
	public Order addProduct(Long id, Order order) {
		Assert.notNull(order);
		Order retVal = null;
		
		List<Order> orders = repository.findAll();
		if (orders.isEmpty()){
			retVal = order;
		} else {
			retVal = orders.get(0);
		}
		
		Product product = productRepository.findOne(id);
		if (product != null){
			if (retVal.getProducts() == null){
				retVal.setProducts(new ArrayList<>());
			}
			retVal.getProducts().add(product);
			retVal = repository.save(retVal);
		}
		return retVal;
	}

}
