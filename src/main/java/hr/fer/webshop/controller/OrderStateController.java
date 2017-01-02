package hr.fer.webshop.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import hr.fer.webshop.models.OrderState;

@RestController
@RequestMapping("/order-states")
public class OrderStateController extends JpaRestController<OrderState> {

}
