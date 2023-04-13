package com.example.finalapp.repositories;

import com.example.finalapp.models.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category,Integer> {
    com.example.finalapp.models.Category findByName(String name);
}
