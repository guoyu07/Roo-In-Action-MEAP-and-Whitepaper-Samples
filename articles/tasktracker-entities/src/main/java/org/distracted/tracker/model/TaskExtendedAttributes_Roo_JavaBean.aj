// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.distracted.tracker.model;

import java.lang.String;
import java.math.BigDecimal;
import java.util.Date;

privileged aspect TaskExtendedAttributes_Roo_JavaBean {
    
    public String TaskExtendedAttributes.getComments() {
        return this.comments;
    }
    
    public void TaskExtendedAttributes.setComments(String comments) {
        this.comments = comments;
    }
    
    public Date TaskExtendedAttributes.getLastUpdateDate() {
        return this.lastUpdateDate;
    }
    
    public void TaskExtendedAttributes.setLastUpdateDate(Date lastUpdateDate) {
        this.lastUpdateDate = lastUpdateDate;
    }
    
    public BigDecimal TaskExtendedAttributes.getCost() {
        return this.cost;
    }
    
    public void TaskExtendedAttributes.setCost(BigDecimal cost) {
        this.cost = cost;
    }
    
}