/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.service;

import java.util.List;
import org.eapti.aptitude.models.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.eapti.aptitude.repository.QuestionDao;
import org.springframework.transaction.annotation.Propagation;

/**
 *
 * @author Admin
 */
@Service
@Transactional(value = "transactionManager", propagation = Propagation.REQUIRED, readOnly = true)
public class QuestionServiceImp implements QuestionService{

    @Autowired
    QuestionDao questionDao;
    
    @Override
    public List<Question> findAll() {
       return questionDao.findAll();
    }

    @Override
    public boolean addQuestion(Question question) {
       return questionDao.addQuestion(question);
    }

    @Override
    public boolean updateQuestion(Question question) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean deleteQuestion(int questionId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Question getRandomQuestion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Question getQuestionByModuleId(int moduleId) {
       return questionDao.getQuestionByModuleId(moduleId);
    }
    
}
