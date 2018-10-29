/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.service;

import java.util.List;
import org.eapti.aptitude.models.Module;
import org.eapti.aptitude.repository.ModuleDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Service
public class ModuleServiceImp implements ModuleService{

    @Autowired
    ModuleDao moduleDao;
    
    @Override
    public List<Module> findAll() {
        List<Module> modules=null;
        try{
        modules= moduleDao.findAll();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
        return modules;
    }

    @Override
    public boolean addModule(Module module) {
       moduleDao.addModule(module);
       return true;
    }

   
    
}
