package com.laho.languages.repositories;

import com.example.languages.models.Languages;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LanguagesRepository extends CrudRepository<Languages,Long> {
    List<Languages>findAll();
}
