package com.example.finalapp.repositories;

import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Category extends JpaRepository<Category, Integer> {
    com.example.finalapp.models.Category findByName(String name);
}
//Нахождение бд в нужной категории