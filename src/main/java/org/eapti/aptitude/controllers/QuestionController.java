/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.controllers;

import java.util.Map;
import org.eapti.aptitude.models.Question;
import org.eapti.aptitude.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.eapti.aptitude.service.QuestionService;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping("/question")
public class QuestionController {
    
    @Autowired
    private QuestionService questionService;
    
    @Autowired
    private ModuleService moduleService;
    
    /**
     *
     * @param pathVariablesMap
     * @param model
     * @return
     */
    @RequestMapping(value={"/get/{moduleId}","/get"} , method=RequestMethod.GET)
    public String getQuestionByModuleId(@PathVariable Map<String, String> pathVariablesMap,Model model){
        if(pathVariablesMap.containsKey("moduleId")){
            int moduleId= Integer.parseInt(pathVariablesMap.get("moduleId"));
             model.addAttribute("question", questionService.getQuestionByModuleId(moduleId));
        }
        else{
            model.addAttribute("question", questionService.getQuestionByModuleId(1));
        }
        return "practice";
    }
    
    @RequestMapping(value="",method=RequestMethod.GET)
    public String getQuestion(Model model){
        model.addAttribute("moduleList", moduleService.findAll());
        model.addAttribute("question", new Question());
        return "question";
    }
    
    @RequestMapping(value="/add")
    public String addQuestion(@ModelAttribute("question") Question question){
        questionService.addQuestion(question);
        return "question";
    }
}