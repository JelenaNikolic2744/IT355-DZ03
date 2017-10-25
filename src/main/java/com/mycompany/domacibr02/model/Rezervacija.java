/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.domacibr02.model;

/**
 *
 * @author Jeca
 */
public class Rezervacija {
    private String ime;
    private int brojGostiju;
    private int brojTelefona;

    public Rezervacija() {
    }

    public Rezervacija(String ime, int brojGostiju, int brojTelefona) {
        this.ime = ime;
        this.brojGostiju = brojGostiju;
        this.brojTelefona = brojTelefona;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public void setBrojGostiju(int brojGostiju) {
        this.brojGostiju = brojGostiju;
    }

    public void setBrojTelefona(int brojTelefona) {
        this.brojTelefona = brojTelefona;
    }

    public String getIme() {
        return ime;
    }

    public int getBrojGostiju() {
        return brojGostiju;
    }

    public int getBrojTelefona() {
        return brojTelefona;
    }

    @Override
    public String toString() {
        return "Rezervacija{" + "ime=" + ime + ", brojGostiju=" + brojGostiju + ", brojTelefona=" + brojTelefona + '}';
    }
    
    
}
