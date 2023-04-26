package com.example.finalapp.services;

import com.example.finalapp.models.Category;
import com.example.finalapp.models.Person;
import com.example.finalapp.models.Product;
import com.example.finalapp.repositories.PersonRepository;
import com.example.finalapp.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class PersonService {
    private final PersonRepository personRepository;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public PersonService(PersonRepository personRepository, PasswordEncoder passwordEncoder) {
        this.personRepository = personRepository;
        this.passwordEncoder = passwordEncoder;
    }    // Данный метод позволяет получить список всех пользователей

    public Person findByLogin(Person person){
        Optional<Person> person_db = personRepository.findByLogin(person.getLogin());
        return person_db.orElse(null);
    }

    @Transactional
    public void register(Person person){
        person.setPassword(passwordEncoder.encode(person.getPassword()));
        person.setRole("ROLE_USER");
        personRepository.save(person);
    }


    public List<Person> getAllPerson(){
        return personRepository.findAll();
    }
    // Данный метод позволяет получить пользователя  по id

    public Person getPersonId(int id){
        Optional<Person> optionalPerson = personRepository.findById(id);
        return optionalPerson.orElse(null);
    }
    // Данный метод позволяет сохранить пользователя

    @Transactional
    public void savePerson(Person person){
//        product.setCategory(category);
        personRepository.save(person);}

//     Данный метод позволяет обновить данные о пользователе
    @Transactional
    public void updatePerson(int id, Person person){
        person.setId(id);
        personRepository.save(person);
    }


}
