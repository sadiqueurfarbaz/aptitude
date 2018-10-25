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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Admin
 */
@Repository
public class QuestionDaoImp extends Dao<Integer, Question> implements QuestionDao{

    @Autowired
    DaoHelper helper;
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
        getSession().beginTransaction();
        super.update(question);
        getSession().getTransaction().commit();
        return true;
    }

    @Override
    public boolean deleteQuestion(int questionId) {
        getSession().beginTransaction();
        super.delete(getByKey(questionId));
        getSession().getTransaction().commit();
        return true;
    }

    @Override
    public Question getRandomQuestion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Question getQuestionByModuleId(int moduleId) {
        getSession().beginTransaction();
       Criteria criteria = createEntityCriteria();
       Question q=null;
       criteria.add(Restrictions.eq("moduleId", moduleId));
       if(criteria.list().size()>0){
           q= (Question) criteria.list().get(helper.getRandomPosition(criteria.list().size()));
       }
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

    @Override
    public Question getQuestionById(int id) {
        getSession().beginTransaction();
        Question q= super.getByKey(id);
        getSession().getTransaction().commit();
        return q;
    }

    @Override
    public Question getQuestionForTest() {
       getSession().beginTransaction();
       int pos=helper.getRandomPosition(super.findAll().size());
       if(pos==0){
           pos=1;
       }
       Question q = super.getByKey(pos);
       getSession().getTransaction().commit();
       return q;
    }
    
}
