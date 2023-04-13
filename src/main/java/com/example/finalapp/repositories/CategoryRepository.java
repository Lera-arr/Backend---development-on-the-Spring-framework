package com.example.finalapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryRepository, Integer> {
    com.example.finalapp.models.Category findByName(String name);
}
//Нахождение бд в нужной категории