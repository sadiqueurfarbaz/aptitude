/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.repository;

import java.util.List;
import org.eapti.aptitude.models.Test;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Admin
 */
@Repository
public class TestDaoImp extends Dao<Integer,Test> implements TestDao {

    @Override
    public void addTest(Test test) {
        persist(test);
        
    }
     @Override
    public List<Test> findAll() {
        List<Test> allTests= super.findAll();
        return allTests;
    }
}
