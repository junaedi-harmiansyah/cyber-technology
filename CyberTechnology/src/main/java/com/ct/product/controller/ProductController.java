package com.ct.product.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ct.product.model.Product;
import com.ct.product.service.ProductService;

@RestController
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/findAll", method = RequestMethod.GET)
	public ResponseEntity<Collection<Product>> findAll() {
		Collection<Product> listOfProduct = productService.findAll();
		ResponseEntity<Collection<Product>> result = new ResponseEntity<Collection<Product>>(listOfProduct,
				HttpStatus.OK);
		return result;
	}
	
	@RequestMapping(value = "/save", method =RequestMethod.POST)
	public void save(@RequestBody Product product) {
		 productService.save(product);
		
	}
	
	
}
