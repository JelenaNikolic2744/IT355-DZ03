/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.domacibr02;

import com.mycompany.domacibr02.aop.RezInterface;
import com.mycompany.domacibr02.model.Rezervacija;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author Jeca
 */
@Controller
public class RezervacijaController {
      @Autowired
    private MessageSource messageSource;

    @Autowired
    private RezInterface dodajRez;

    
    
    @RequestMapping(value = "/rezervacija", method = RequestMethod.GET)
    public ModelAndView rezervacija() {
        System.out.println("Calling MessageSource");
        System.out.println(messageSource.getMessage("ime", null, new Locale("sr-Latn-RS")));
        System.out.println("Calling DodajRez");
        dodajRez.dodajRez();
        dodajRez.dodajRezA("Illegal arg");
        dodajRez.dodajRezz();
        try{
            dodajRez.dodajRezThrowException();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return new ModelAndView("rezervacija", "command", new Rezervacija());
    }
    
   
    @RequestMapping(value = "/addRezervacija", method = RequestMethod.POST)
    public String rezervacija(@ModelAttribute Rezervacija rezervacija, ModelMap model) {
        model.addAttribute("ime", rezervacija.getIme());
        model.addAttribute("brojGostiju", rezervacija.getBrojGostiju());
        model.addAttribute("brojTelefona", rezervacija.getBrojTelefona());
        System.out.println("Calling dodajRez");
        dodajRez.dodajRez();
        dodajRez.dodajRezA(rezervacija.getIme());
        dodajRez.dodajRezz();
        return "viewRezervacija";
    }
}
