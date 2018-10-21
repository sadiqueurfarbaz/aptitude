/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eapti.aptitude.models.Login;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    
    @RequestMapping(value="", method = RequestMethod.GET)
    public ModelAndView displayLogin(Model model){
        String message="Welcome to login page";
        Login login= new Login();
        login.setUserType("USER");
        model.addAttribute("login", login);
        return new ModelAndView("login","message",message);
    }
    
    @RequestMapping(value={"/processLogin"},method= RequestMethod.POST)
    public ModelAndView processLogin(HttpServletRequest request, HttpServletResponse response,
  @ModelAttribute("login") Login login)
    {
        ModelAndView mav=null;
        if(login.getUserType().equals("ADMIN")){
            return new ModelAndView("redirect:/adminhome");
        }
        return new ModelAndView("redirect:/home","loginObj",login);
        
    }
     @RequestMapping(value="/admin", method = RequestMethod.GET)
    public ModelAndView displayAdminLogin(Model model){
        String message="Welcome to login page";
        Login login= new Login();
        login.setUserType("ADMIN");
        model.addAttribute("login", login);
        return new ModelAndView("login","message",message);
    }
}
