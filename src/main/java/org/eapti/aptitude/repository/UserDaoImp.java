/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.repository;

import java.util.List;
import org.eapti.aptitude.models.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public class UserDaoImp extends Dao<Integer, User> implements UserDao {

    @Override
    public void AddUser(User user) {
        getSession().beginTransaction();
        super.persist(user);
        getSession().getTransaction().commit();
    }

    @Override
    public User getUserByUsername(String username) {
       getSession().beginTransaction();
       Criteria criteria=createEntityCriteria();
       criteria.add(Restrictions.eq("username", username));
       return (User)criteria.uniqueResult();
    }

    @Override
    public List<User> findAll() {
       List<User> users=null;
       getSession().beginTransaction();
       users= super.findAll();
       getSession().getTransaction().commit();
       return users;
    }
    
}
