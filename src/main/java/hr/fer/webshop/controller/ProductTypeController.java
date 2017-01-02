package hr.fer.webshop.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import hr.fer.webshop.models.Product;

@RestController
@RequestMapping("/product-types")
public class ProductTypeController extends JpaRestController<Product> {

}
