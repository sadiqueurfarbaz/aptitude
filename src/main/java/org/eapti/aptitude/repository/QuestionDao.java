/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.repository;

import java.util.List;
import org.eapti.aptitude.models.Question;

/**
 *
 * @author Admin
 */
public interface QuestionDao {
    List<Question> findAll();
    boolean addQuestion(Question question);
    boolean updateQuestion(Question question);
    boolean deleteQuestion(int questionId);
    Question getRandomQuestion();
    Question getQuestionByModuleId(int moduleId);
    
}
