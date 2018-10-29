/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.service;

import java.util.List;
import org.eapti.aptitude.models.User;
import org.eapti.aptitude.repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Administrator
 */
@Service
@Transactional
public class UserServiceImp implements UserService{

    @Autowired
    UserDao userDao;
    
    @Override
    public void AddUser(User user) {
        userDao.AddUser(user);
    }

    @Override
    public User getUserByUsername(String username) {
      return  userDao.getUserByUsername(username);
    }

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }
    
}
