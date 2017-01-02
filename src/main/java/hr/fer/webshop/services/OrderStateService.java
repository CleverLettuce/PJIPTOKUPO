package hr.fer.webshop.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hr.fer.webshop.models.OrderState;

@Service
@Transactional
public class OrderStateService extends JpaService<OrderState> {

}
