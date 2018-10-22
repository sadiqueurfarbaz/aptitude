/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.repository;

import java.util.List;
import org.eapti.aptitude.models.Question;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.Subqueries;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Admin
 */
@Repository
public class QuestionDaoImp extends Dao<Integer, Question> implements QuestionDao{

    @Override
    public List<Question> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean addQuestion(Question question) {
        getSession().beginTransaction();
        super.persist(question);
        getSession().getTransaction().commit();
        return true;
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
        getSession().beginTransaction();
       Criteria criteria = createEntityCriteria();
       criteria.add(Restrictions.eq("moduleId", moduleId));
       Question q= (Question) criteria.uniqueResult();
       getSession().getTransaction().commit();
       return q;
    }

    @Override
    public List<Question> getAllQuestionByModule(int moduleId) {
       getSession().beginTransaction();
       Criteria criteria = createEntityCriteria();
       criteria.add(Restrictions.eq("moduleId", moduleId));
       List<Question> q=  criteria.list();
       getSession().getTransaction().commit();
       return q;
    }
    
}
