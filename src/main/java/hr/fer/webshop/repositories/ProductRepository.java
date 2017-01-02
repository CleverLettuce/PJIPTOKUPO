package hr.fer.webshop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hr.fer.webshop.models.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

}
