/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.service;

import java.util.List;
import org.eapti.aptitude.models.Test;
import org.eapti.aptitude.repository.TestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Service
@Transactional
public class TestServiceImp implements TestService {

    @Autowired
    TestDao testDao;
    @Override
    public List<Test> findAll() {
        return testDao.findAll();
    }

    @Override
    public void addTest(Test test) {
        testDao.addTest(test);
    }
    
}
