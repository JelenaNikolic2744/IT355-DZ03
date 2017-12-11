/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.domacibr02;

import org.springframework.stereotype.Service;

/**
 *
 * @author Jeca
 */
@Service
public class ProizvodService {
    
    public String proveraProizvoda(ProizvodBean proizvodBean) {
        String proizvod = proizvodBean.getProizvod();
        if (proizvod.equals("pohovanaLignja")) {
            return "true";
        } else {
            return "false";
        }
    }
}
