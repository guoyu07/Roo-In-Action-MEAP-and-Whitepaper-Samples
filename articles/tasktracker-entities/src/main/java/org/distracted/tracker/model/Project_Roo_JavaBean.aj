// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.distracted.tracker.model;

import java.lang.String;
import java.util.Set;
import org.distracted.tracker.model.Task;

privileged aspect Project_Roo_JavaBean {
    
    public String Project.getProjectName() {
        return this.projectName;
    }
    
    public void Project.setProjectName(String projectName) {
        this.projectName = projectName;
    }
    
    public Set<Task> Project.getTasks() {
        return this.tasks;
    }
    
    public void Project.setTasks(Set<Task> tasks) {
        this.tasks = tasks;
    }
    
}
