package com.hellokoding.account.model;

import javax.persistence.*;

@Entity
@Table(name = "programari")
public class Form
{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String tipExamen;
    private String numarScolarizare;
    private String localitate;
    private String data;
    private String ora;


    public String getTipExamen()
    {
        return tipExamen;
    }

    public void setTipExamen(String tipExamen)
    {
        this.tipExamen = tipExamen;
    }

    public String getNumarScolarizare()
    {
        return numarScolarizare;
    }

    public void setNumarScolarizare(String numarScolarizare)
    {
        this.numarScolarizare = numarScolarizare;
    }

    public String getLocalitate()
    {
        return localitate;
    }

    public void setLocalitate(String localitate)
    {
        this.localitate = localitate;
    }

    public String getData()
    {
        return data;
    }

    public void setData(String data)
    {
        this.data = data;
    }

    public String getOra()
    {
        return ora;
    }

    public void setOra(String ora)
    {
        this.ora = ora;
    }
}
