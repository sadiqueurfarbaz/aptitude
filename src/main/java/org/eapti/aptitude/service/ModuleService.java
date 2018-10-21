/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.service;

import java.util.List;
import org.eapti.aptitude.models.Module;

/**
 *
 * @author Admin
 */
public interface ModuleService {
     List<Module> findAll();
      boolean addModule(Module module);
}
