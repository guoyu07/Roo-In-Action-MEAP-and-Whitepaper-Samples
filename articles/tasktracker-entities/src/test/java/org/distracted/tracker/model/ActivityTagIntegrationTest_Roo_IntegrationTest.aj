// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.distracted.tracker.model;

import org.distracted.tracker.model.ActivityTagDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ActivityTagIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ActivityTagIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ActivityTagIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: ActivityTagIntegrationTest: @Transactional;
    
    @Autowired
    private ActivityTagDataOnDemand ActivityTagIntegrationTest.dod;
    
    @Test
    public void ActivityTagIntegrationTest.testCountActivityTags() {
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to initialize correctly", dod.getRandomActivityTag());
        long count = org.distracted.tracker.model.ActivityTag.countActivityTags();
        org.junit.Assert.assertTrue("Counter for 'ActivityTag' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ActivityTagIntegrationTest.testFindActivityTag() {
        org.distracted.tracker.model.ActivityTag obj = dod.getRandomActivityTag();
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to provide an identifier", id);
        obj = org.distracted.tracker.model.ActivityTag.findActivityTag(id);
        org.junit.Assert.assertNotNull("Find method for 'ActivityTag' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'ActivityTag' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ActivityTagIntegrationTest.testFindAllActivityTags() {
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to initialize correctly", dod.getRandomActivityTag());
        long count = org.distracted.tracker.model.ActivityTag.countActivityTags();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'ActivityTag', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.distracted.tracker.model.ActivityTag> result = org.distracted.tracker.model.ActivityTag.findAllActivityTags();
        org.junit.Assert.assertNotNull("Find all method for 'ActivityTag' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'ActivityTag' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ActivityTagIntegrationTest.testFindActivityTagEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to initialize correctly", dod.getRandomActivityTag());
        long count = org.distracted.tracker.model.ActivityTag.countActivityTags();
        if (count > 20) count = 20;
        java.util.List<org.distracted.tracker.model.ActivityTag> result = org.distracted.tracker.model.ActivityTag.findActivityTagEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'ActivityTag' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'ActivityTag' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ActivityTagIntegrationTest.testFlush() {
        org.distracted.tracker.model.ActivityTag obj = dod.getRandomActivityTag();
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to provide an identifier", id);
        obj = org.distracted.tracker.model.ActivityTag.findActivityTag(id);
        org.junit.Assert.assertNotNull("Find method for 'ActivityTag' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyActivityTag(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'ActivityTag' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ActivityTagIntegrationTest.testMerge() {
        org.distracted.tracker.model.ActivityTag obj = dod.getRandomActivityTag();
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to provide an identifier", id);
        obj = org.distracted.tracker.model.ActivityTag.findActivityTag(id);
        boolean modified =  dod.modifyActivityTag(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.distracted.tracker.model.ActivityTag merged = (org.distracted.tracker.model.ActivityTag) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'ActivityTag' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ActivityTagIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to initialize correctly", dod.getRandomActivityTag());
        org.distracted.tracker.model.ActivityTag obj = dod.getNewTransientActivityTag(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'ActivityTag' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'ActivityTag' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ActivityTagIntegrationTest.testRemove() {
        org.distracted.tracker.model.ActivityTag obj = dod.getRandomActivityTag();
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ActivityTag' failed to provide an identifier", id);
        obj = org.distracted.tracker.model.ActivityTag.findActivityTag(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'ActivityTag' with identifier '" + id + "'", org.distracted.tracker.model.ActivityTag.findActivityTag(id));
    }
    
}
