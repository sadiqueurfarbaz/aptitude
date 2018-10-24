/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.service;

import java.util.List;
import org.eapti.aptitude.models.User;

/**
 *
 * @author Administrator
 */
public interface UserService {
    void AddUser(User user);
    User getUserByUsername(String username);
    List<User> findAll();
}
