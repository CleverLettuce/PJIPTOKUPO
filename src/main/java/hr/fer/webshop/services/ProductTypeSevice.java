package hr.fer.webshop.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hr.fer.webshop.models.ProductType;

@Service
@Transactional
public class ProductTypeSevice extends JpaService<ProductType> {

}
