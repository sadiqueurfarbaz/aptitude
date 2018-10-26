/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.eapti.aptitude.models.Login;
import org.eapti.aptitude.models.User;
import org.eapti.aptitude.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
    
    
    @Autowired
    UserService userService;
    
    @Autowired
    HttpSession session;
    
    @RequestMapping(value="", method = RequestMethod.GET)
    public ModelAndView displayLogin(Model model){
        Login login= new Login();
        login.setUserType("USER");
        model.addAttribute("login", login);
        return new ModelAndView("login","message","");
    }
    
    @RequestMapping(value={"/processLogin"},method= RequestMethod.POST)
    public ModelAndView processLogin(@ModelAttribute("login") Login login)
    {
        ModelAndView mav;
        User user=userService.getUserByUsername(login.getUsername());
        if(user !=null && user.getPassword().equals(login.getPassword())){
            if(login.getUserType().equals("ADMIN")){
                mav=new ModelAndView("redirect:/adminhome");
            }
            else{
                session.setAttribute("username", login.getUsername());
                session.setAttribute("fullName",user.getFirstname() + " "+user.getLastname());
                mav=new ModelAndView("redirect:/home","loginObj",login);
            }
            
        }
        else{
             mav=new ModelAndView("redirect:/login","message","Invalid Credentials");
        }
        
        return mav;
        
    }
     @RequestMapping(value="/admin", method = RequestMethod.GET)
    public ModelAndView displayAdminLogin(Model model){
        Login login= new Login();
        login.setUserType("ADMIN");
        model.addAttribute("login", login);
        return new ModelAndView("login","message","");
    }
    
    @RequestMapping(value="/newuser",method=RequestMethod.GET)
    public String getNewUserPage(Model model){
        model.addAttribute("user", new User());
        return "user";
    }
    
    @RequestMapping(value="/newuser",method=RequestMethod.POST)
    public String addNewUser(@ModelAttribute("user") User user){
        user.setUsertype("USER");
        userService.AddUser(user);
        return "redirect:/login";
    }
    
    @RequestMapping(value="/allusers",method=RequestMethod.GET)
    public String viewAllUsers(Model model){
        model.addAttribute("users", userService.findAll());
        return "viewusers";
    }
}
