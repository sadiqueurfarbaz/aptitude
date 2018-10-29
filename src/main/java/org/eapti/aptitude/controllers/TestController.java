/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.controllers;

import org.eapti.aptitude.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping("/test")
public class TestController {
    
    @Autowired
    TestService testService;
    
    @RequestMapping(value="/viewall")
    public String viewllTest(Model model){
        model.addAttribute("tests",testService.findAll());
        return"viewtest";
    }
}
