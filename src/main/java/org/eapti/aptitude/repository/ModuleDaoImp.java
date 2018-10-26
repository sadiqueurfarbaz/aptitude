/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.repository;

import java.util.List;
import org.eapti.aptitude.models.Module;
import org.springframework.stereotype.Repository;


/**
 *
 * @author Admin
 */
@Repository
public class ModuleDaoImp extends Dao<Integer, Module> implements ModuleDao {

    @Override
    public List<Module> findAll() {
        List<Module> modules;
        getSession().beginTransaction();
        modules=super.findAll();
        getSession().getTransaction().commit();
        
        return modules;
    }

    @Override
    public boolean addModule(Module module) {
        getSession().beginTransaction();
        persist(module);
        getSession().getTransaction().commit();
        
        return true;
    }
    
}
