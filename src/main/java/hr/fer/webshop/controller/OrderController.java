package hr.fer.webshop.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import hr.fer.webshop.models.Order;

@RestController
@RequestMapping("/orders")
public class OrderController extends JpaRestController<Order> {

}
