// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.distracted.tracker.model;

import java.lang.String;

privileged aspect ActivityTag_Roo_ToString {
    
    public String ActivityTag.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Tag: ").append(getTag()).append(", ");
        sb.append("TaggedTasks: ").append(getTaggedTasks() == null ? "null" : getTaggedTasks().size());
        return sb.toString();
    }
    
}
