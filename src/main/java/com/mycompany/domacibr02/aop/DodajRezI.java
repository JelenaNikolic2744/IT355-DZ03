/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.domacibr02.aop;

/**
 *
 * @author Jeca
 */
public class DodajRezI implements RezInterface{

    @Override
    public void dodajRez() {
        System.out.println("Dodavanje rezervacije");
    }

    @Override
    public String dodajRezz() {
        System.out.println("Dodavanje rezervacije i vracanje");
        return "Rezervacija uspesno dodata";
    }

    @Override
    public void dodajRezThrowException() throws Exception {
        System.out.println("Negde ima greska");
        throw new Exception("Generic exception");
    }

    @Override
    public void dodajRezA(String name) {
        System.out.println("Dodavanje rezervacije sa imenom: " + name); 
    }
    
}
