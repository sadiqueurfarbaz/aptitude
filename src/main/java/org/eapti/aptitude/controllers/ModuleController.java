/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.controllers;

import com.sun.tracing.dtrace.ModuleAttributes;
import org.eapti.aptitude.models.Module;
import org.eapti.aptitude.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping("/module")
public class ModuleController {
    
    @Autowired
    ModuleService moduleService;
    
    @RequestMapping(value="/add",method=RequestMethod.GET)
    public String getAddModulePage(Model model){
        
        model.addAttribute("module", new Module());
        return "module";
    }
    @RequestMapping(value="/add",method=RequestMethod.POST)
    public String addNewModule(@ModelAttribute("module") Module module,Model model){
        moduleService.addModule(module);
        model.addAttribute("module", new Module());
        
        return "module";
    }
    
}
