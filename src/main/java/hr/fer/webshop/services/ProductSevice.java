package hr.fer.webshop.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hr.fer.webshop.models.Product;

@Service
@Transactional
public class ProductSevice extends JpaService<Product> {

}
