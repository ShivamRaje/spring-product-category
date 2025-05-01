package com.example.demo.controller;

import com.example.demo.entity.Product;
import com.example.demo.entity.Category;
import com.example.demo.repository.ProductRepository;
import com.example.demo.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/products")
public class ProductController {

    @Autowired
    private ProductRepository productRepo;

    @Autowired
    private CategoryRepository categoryRepo;

    // Get all products with pagination
    @GetMapping
    public Page<Product> getAll(@RequestParam(defaultValue = "0") int page) {
        return productRepo.findAll(PageRequest.of(page, 5));
    }

    // Create a new product
    @PostMapping
    public ResponseEntity<Product> create(@RequestBody Product product) {
        if (product.getCategory() != null && product.getCategory().getId() != null) {
            Optional<Category> category = categoryRepo.findById(product.getCategory().getId());
            category.ifPresent(product::setCategory);  // Set the category if found
        }
        return ResponseEntity.ok(productRepo.save(product));  // Save and return the product
    }

    // Get a single product by ID
    @GetMapping("/{id}")
    public ResponseEntity<Product> getById(@PathVariable Long id) {
        return productRepo.findById(id)
                .map(product -> ResponseEntity.ok(product))  // Return the product if found
                .orElse(ResponseEntity.notFound().build());  // Return 404 if not found
    }

    // Update an existing product by ID
    @PutMapping("/{id}")
    public ResponseEntity<Product> update(@PathVariable Long id, @RequestBody Product product) {
        return productRepo.findById(id)
                .map(existing -> {
                    existing.setName(product.getName());
                    existing.setPrice(product.getPrice());
                    if (product.getCategory() != null) {
                        existing.setCategory(product.getCategory());
                    }
                    return ResponseEntity.ok(productRepo.save(existing));  // Save the updated product
                }).orElse(ResponseEntity.notFound().build());  // Return 404 if not found
    }

    // Delete a product by ID
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        productRepo.deleteById(id);
        return ResponseEntity.ok().build();  // Return a successful response
    }
}
