package com.hellokoding.account.service;

import com.hellokoding.account.model.Form;
import com.hellokoding.account.repository.ProgramareRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProgramareServiceImp implements ProgramareService
{

    @Autowired
    private ProgramareRepository programareRepository;

    @Override
    public void save(Form form)
    {
        programareRepository.save(form);
    }

    @Override
    public Form findByNumarScolarizare(String numarScolarizare)
    {
        return programareRepository.findByNumarScolarizare(numarScolarizare);
    }
}
