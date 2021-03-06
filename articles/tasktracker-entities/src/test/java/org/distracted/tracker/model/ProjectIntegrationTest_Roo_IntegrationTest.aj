// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.distracted.tracker.model;

import org.distracted.tracker.model.ProjectDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProjectIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ProjectIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ProjectIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: ProjectIntegrationTest: @Transactional;
    
    @Autowired
    private ProjectDataOnDemand ProjectIntegrationTest.dod;
    
    @Test
    public void ProjectIntegrationTest.testCountProjects() {
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to initialize correctly", dod.getRandomProject());
        long count = org.distracted.tracker.model.Project.countProjects();
        org.junit.Assert.assertTrue("Counter for 'Project' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ProjectIntegrationTest.testFindProject() {
        org.distracted.tracker.model.Project obj = dod.getRandomProject();
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to provide an identifier", id);
        obj = org.distracted.tracker.model.Project.findProject(id);
        org.junit.Assert.assertNotNull("Find method for 'Project' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Project' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ProjectIntegrationTest.testFindAllProjects() {
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to initialize correctly", dod.getRandomProject());
        long count = org.distracted.tracker.model.Project.countProjects();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Project', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.distracted.tracker.model.Project> result = org.distracted.tracker.model.Project.findAllProjects();
        org.junit.Assert.assertNotNull("Find all method for 'Project' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Project' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ProjectIntegrationTest.testFindProjectEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to initialize correctly", dod.getRandomProject());
        long count = org.distracted.tracker.model.Project.countProjects();
        if (count > 20) count = 20;
        java.util.List<org.distracted.tracker.model.Project> result = org.distracted.tracker.model.Project.findProjectEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Project' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Project' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ProjectIntegrationTest.testFlush() {
        org.distracted.tracker.model.Project obj = dod.getRandomProject();
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to provide an identifier", id);
        obj = org.distracted.tracker.model.Project.findProject(id);
        org.junit.Assert.assertNotNull("Find method for 'Project' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyProject(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Project' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ProjectIntegrationTest.testMerge() {
        org.distracted.tracker.model.Project obj = dod.getRandomProject();
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to provide an identifier", id);
        obj = org.distracted.tracker.model.Project.findProject(id);
        boolean modified =  dod.modifyProject(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.distracted.tracker.model.Project merged = (org.distracted.tracker.model.Project) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Project' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ProjectIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to initialize correctly", dod.getRandomProject());
        org.distracted.tracker.model.Project obj = dod.getNewTransientProject(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Project' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Project' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ProjectIntegrationTest.testRemove() {
        org.distracted.tracker.model.Project obj = dod.getRandomProject();
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Project' failed to provide an identifier", id);
        obj = org.distracted.tracker.model.Project.findProject(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Project' with identifier '" + id + "'", org.distracted.tracker.model.Project.findProject(id));
    }
    
}
