/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.repository;

import java.util.Random;
import org.springframework.stereotype.Component;

/**
 *
 * @author Administrator
 */
@Component
public class DaoHelper {
    int getRandomPosition(int length){
        Random random = new Random();
        int rand= 0+random.nextInt(length);
        return rand>0 ? rand : 1;
    }
    
}
