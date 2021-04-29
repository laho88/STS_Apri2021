package com.laho.languages.services;

import com.example.languages.models.Languages;
import com.example.languages.repository.LanguagesRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LanguagesService {
    private final LanguagesRepository languagesRepository;

    public LanguagesService(LanguagesRepository languagesRepository) {
        this.languagesRepository = languagesRepository;
    }
    public List<Languages> allLanguages() {
        return languagesRepository.findAll();
    }

    public Languages creatLanguage(Languages L){
        return languagesRepository.save(L);
    }

    public Languages findLanguage(Long id){
        Optional<Languages> optionalLanguage = languagesRepository.findById(id);
        if(optionalLanguage.isPresent()){
            return optionalLanguage.get();
        }
        else
            return null;
    }
}