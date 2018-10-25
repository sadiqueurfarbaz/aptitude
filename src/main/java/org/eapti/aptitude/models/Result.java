/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.models;

/**
 *
 * @author Administrator
 */
public class Result {
    
    String username; 
    int questionAnswered;
    int correctlyAnswered;
    int wronglyAnswered;
    String startDateAndTime;
    String finishDateAndTime;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getQuestionAnswered() {
        return questionAnswered;
    }

    public void setQuestionAnswered(int questionAnswered) {
        this.questionAnswered = questionAnswered;
    }

    public int getCorrectlyAnswered() {
        return correctlyAnswered;
    }

    public void setCorrectlyAnswered(int correctlyAnswered) {
        this.correctlyAnswered = correctlyAnswered;
    }

    public int getWronglyAnswered() {
        return wronglyAnswered;
    }

    public void setWronglyAnswered(int wronglyAnswered) {
        this.wronglyAnswered = wronglyAnswered;
    }

    public String getStartDateAndTime() {
        return startDateAndTime;
    }

    public void setStartDateAndTime(String startDateAndTime) {
        this.startDateAndTime = startDateAndTime;
    }

    public String getFinishDateAndTime() {
        return finishDateAndTime;
    }

    public void setFinishDateAndTime(String finishDateAndTime) {
        this.finishDateAndTime = finishDateAndTime;
    }
    
}
