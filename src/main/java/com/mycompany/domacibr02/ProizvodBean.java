/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.domacibr02;

import java.io.Serializable;

/**
 *
 * @author Jeca
 */
public class ProizvodBean implements Serializable{
    
    private String proizvod;
    private static final long serialVersionUID = 1L;
    

    public String getProizvod() {
        return proizvod;
    }

    public void setProizvod(String proizvod) {
        this.proizvod = proizvod;
    }

    @Override
    public String toString() {
        return "ProizvodBean{" + "proizvod=" + proizvod + '}';
    }
}
