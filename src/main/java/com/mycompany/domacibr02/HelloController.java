/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.domacibr02;

/**
 *
 * @author Jeca
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller 
@RequestMapping("/")
public class HelloController {
    
    @RequestMapping(method = RequestMethod.GET) 
    public String printHello(ModelMap model) { 
        model.addAttribute("message", "Dobrodosli na restoran Kod!");
         return "hello";
    }
}
