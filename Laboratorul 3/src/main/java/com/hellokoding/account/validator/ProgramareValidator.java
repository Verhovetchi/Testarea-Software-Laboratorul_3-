package com.hellokoding.account.validator;

import com.hellokoding.account.model.Form;
import com.hellokoding.account.model.User;
import com.hellokoding.account.service.ProgramareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class ProgramareValidator implements Validator
{

    @Autowired
    private ProgramareService programareService;

    @Override
    public boolean supports(Class<?> aClass)
    {
        return false;
    }

    @Override
    public void validate(Object o, Errors errors)
    {
        Form form = (Form) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "numarScolarizare", "NotEmpty");
        if (form.getNumarScolarizare().length() != 7)
        {
            errors.rejectValue("numarScolarizare", "Size.programareForm.numarScolarizare");
        }

        if (programareService.findByNumarScolarizare(form.getNumarScolarizare()) != null)
        {
            errors.rejectValue("numarScolarizare", "Duplicate.programareForm.numarScolarizare");
        }

        if(!form.getNumarScolarizare().matches("^[0-9]+$"))
            errors.rejectValue("numarScolarizare", "Wrong.programareForm.numarScolarizare");
    }
}
