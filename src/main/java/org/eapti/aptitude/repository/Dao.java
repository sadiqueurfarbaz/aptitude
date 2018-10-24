/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.eapti.aptitude.repository;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Admin
 * @param <PK>
 * @param <T>
 */
public abstract class Dao <PK extends Serializable, T>{
    @Autowired
    private SessionFactory sessionFactory;
    
    private final Class<T> persistentClass;
    
    @SuppressWarnings("unchecked")
    public Dao(){
        this.persistentClass =(Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
    }
    protected Session getSession(){
        return sessionFactory.getCurrentSession();
    }
    
    @SuppressWarnings("unchecked")
    public T getByKey(PK key) {
        return (T) getSession().get(persistentClass, key);
    }
    
    public void update(T entity){
        getSession().update(entity);
    }
    public void persist(T entity) {
        getSession().persist(entity);
    }
 
    public void delete(T entity) {
        getSession().delete(entity);
    }
     
    protected Criteria createEntityCriteria(){
        return getSession().createCriteria(persistentClass);
    }
    protected List<T> findAll(){
     Query query = getSession().createQuery("from " + persistentClass.getName());
     return query.list();
    }
}
