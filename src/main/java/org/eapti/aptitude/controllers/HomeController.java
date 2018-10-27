/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.controllers;

import org.eapti.aptitude.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */

@Controller
public class HomeController {
    
    @Autowired
    ModuleService moduleService;
    
    @RequestMapping(value="/home" , method=RequestMethod.GET)
    public ModelAndView showHomePage(Model model){
        model.addAttribute("moduleList", moduleService.findAll());
        return new ModelAndView("home","objectKey","objectValue");
    }
    
    @RequestMapping(value="/homeoptions" , method=RequestMethod.GET)
    public ModelAndView showHomePageOptions(Model model){
        
        return new ModelAndView("home-options","objectKey","objectValue");
    }
     @RequestMapping(value="/adminhome" , method=RequestMethod.GET)
    public ModelAndView showAdminHomePageOptions(Model model){
        
        return new ModelAndView("home-admin","objectKey","objectValue");
    }
}
