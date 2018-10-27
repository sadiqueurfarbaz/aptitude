/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.controllers;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import javax.print.attribute.standard.DateTimeAtCompleted;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang3.StringUtils;
import org.eapti.aptitude.models.Module;
import org.eapti.aptitude.models.Question;
import org.eapti.aptitude.models.Result;
import org.eapti.aptitude.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.eapti.aptitude.service.QuestionService;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

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
    
    
    @Autowired
    HttpSession session;
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
            model.addAttribute("question", questionService.getQuestionByModuleId(2));
        }
        return "practice";
    }
    
    @RequestMapping(value="",method=RequestMethod.GET)
    public String getQuestion(Model model){
        List<Module> moduleList=moduleService.findAll();
        moduleList.add(0,new Module());
        model.addAttribute("moduleList", moduleList);
        model.addAttribute("question", new Question());
        model.addAttribute("successMessage", "Question Added successfully.");
        return "question";
    }
    
    @RequestMapping(value="/add")
    public String addQuestion(@ModelAttribute("question") Question question){
        questionService.addQuestion(question);
        return "question";
    }
    
    @RequestMapping(value="/getEditQuestion/{questionId}")
    public String getQuestion(@PathVariable("questionId") int questionId,Model model){
       model.addAttribute("question", questionService.getQuestionById(questionId));
       model.addAttribute("moduleList", moduleService.findAll());
       model.addAttribute("questionId",questionId);
       return "editmodaldialog";
    }
    
    @RequestMapping(value="/edit")
    public String getEditPage(Model model){
        
        List<Module> moduleList=moduleService.findAll();
        moduleList.add(0,new Module());
        model.addAttribute("moduleList", moduleList);
        model.addAttribute("question", new Question());
        model.addAttribute("questionList");
        return "editquestion";
    }
    
    @RequestMapping(value="/edit/{questionId}")
    public String editQuestion(@ModelAttribute("question") Question question,@PathVariable("questionId") int questionId){
        questionService.updateQuestion(question);
        return "redirect:/question/edit";
    }
    
    @RequestMapping(value="/delete/{questionId}")
    public String deleteQuestion(@PathVariable("questionId") int questionId){
        questionService.deleteQuestion(questionId);
        return "redirect:/question/edit";
    }
    
    @RequestMapping(value="/getAllQuestionForModule/{moduleId}")
    public String getAllQuestionForModule(@PathVariable("moduleId") int moduleId,Model model){
         List<Module> moduleList=moduleService.findAll();
        moduleList.add(0,new Module());
        model.addAttribute("moduleList", moduleList);
        model.addAttribute("questionList",questionService.getAllQuestionByModule(moduleId));
        model.addAttribute("question", new Question());
        return "editquestion";
    }
    
    @RequestMapping(value="/getTestQuestion")
    public String getTestQuestion(Model model,@RequestParam(value="chosenAnswer",required=false) String chosenAnswer ,
            @RequestParam(value="questionId",required=false) String questionId){
        
        Object count= session.getAttribute("questionCount");
        
        if(count !=null){
            int questionCount = Integer.parseInt(session.getAttribute("questionCount").toString());
            
            
            if(questionCount==10){
                //When User has completed 10 Questions redirect hime to result page
                session.setAttribute("finishTime",getCurrentDateAndTime());
                return "redirect:/question/showTestResult";
                
            }
            else if(StringUtils.isNotBlank(questionId) && StringUtils.isNotBlank(chosenAnswer) ){
                
                // User has started the test 
                boolean result = questionService.checkAnswer(Integer.parseInt(questionId),chosenAnswer);
                int correctAnswers=(Integer) session.getAttribute("correctAnswers");
                int wrongAnswers=(Integer) session.getAttribute("wrongAnswers");
                if(result){
                    correctAnswers++;
                }
                else{
                    wrongAnswers++;
                }
                session.setAttribute("correctAnswers", correctAnswers);
                session.setAttribute("wrongAnswers",wrongAnswers);
                questionCount++;
                session.setAttribute("questionCount", questionCount);
                model.addAttribute("question",questionService.getQuestionForTest());
            }
        }
        else
        {
            // Initialize session for new User
            session.setAttribute("questionCount", 0);
            session.setAttribute("correctAnswers", 0);
            session.setAttribute("wrongAnswers", 0);
            session.setAttribute("StartTime", getCurrentDateAndTime());
            model.addAttribute("question",questionService.getQuestionForTest());
        } 
        return "test";
    }
    
    @RequestMapping(value="/showTestResult")
    public String showTestResult(Model model){
       Result result= constructResultObject();
       session.removeAttribute("questionCount");
       session.removeAttribute("correctAnswers");
       session.removeAttribute("wrongAnswers");
        session.removeAttribute("finishTime");
       session.removeAttribute("StartTime");
       model.addAttribute("result", result);
       model.addAttribute("fullname", (String)session.getAttribute("fullName"));
       return "result";
    }
    
    public String getCurrentDateAndTime(){
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date d= new Date();
        return dateFormat.format(d);
    }
    
    private Result constructResultObject(){
        Result r= new Result();
        r.setUsername((String)session.getAttribute("username"));
        r.setQuestionAnswered((Integer)session.getAttribute("questionCount"));
        r.setCorrectlyAnswered((Integer)session.getAttribute("correctAnswers"));
        r.setWronglyAnswered((Integer)session.getAttribute("wrongAnswers"));
        r.setStartDateAndTime((String)session.getAttribute("StartTime"));
        r.setFinishDateAndTime((String)session.getAttribute("finishTime"));
        return r;
    }
}
