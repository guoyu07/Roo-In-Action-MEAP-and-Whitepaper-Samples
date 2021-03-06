// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.distracted.tracker.model;

import java.util.List;
import java.util.Random;
import org.distracted.tracker.model.Task;
import org.springframework.stereotype.Component;

privileged aspect TaskDataOnDemand_Roo_DataOnDemand {
    
    declare @type: TaskDataOnDemand: @Component;
    
    private Random TaskDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Task> TaskDataOnDemand.data;
    
    public Task TaskDataOnDemand.getSpecificTask(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Task obj = data.get(index);
        return Task.findTask(obj.getId());
    }
    
    public Task TaskDataOnDemand.getRandomTask() {
        init();
        Task obj = data.get(rnd.nextInt(data.size()));
        return Task.findTask(obj.getId());
    }
    
    public boolean TaskDataOnDemand.modifyTask(Task obj) {
        return false;
    }
    
    public void TaskDataOnDemand.init() {
        data = new java.util.ArrayList<org.distracted.tracker.model.Task>();
        for (int i = 0; i < 100; i++) {
            org.distracted.tracker.model.Task obj = getNewTransientTask(i);
            obj.persist();
            data.add(obj);
        }
    }
    
}
