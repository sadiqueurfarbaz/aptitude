/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.repository;

import java.util.List;
import org.eapti.aptitude.models.Test;

/**
 *
 * @author Admin
 */
public interface TestDao {
    
    List<Test> findAll();
    
    void addTest(Test test);
}
