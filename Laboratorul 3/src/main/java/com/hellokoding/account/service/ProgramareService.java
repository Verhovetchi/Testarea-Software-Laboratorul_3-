package com.hellokoding.account.service;

import com.hellokoding.account.model.Form;
import org.springframework.stereotype.Service;

public interface ProgramareService
{
    void save(Form form);

    Form findByNumarScolarizare(String numarScolarizare);
}
