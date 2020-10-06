package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.SaleOrderProducts;

@Repository 
public interface SaleOrderProductsRepo extends JpaRepository<SaleOrderProducts, Integer>{

}
