package com.hellokoding.account.repository;

import com.hellokoding.account.model.Form;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProgramareRepository extends JpaRepository<Form, Long>
{
    Form save(Form form);

    Form findByNumarScolarizare(String numarScolarizare);
}
