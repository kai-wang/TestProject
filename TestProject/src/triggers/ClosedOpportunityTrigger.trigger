trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    Opportunity op = Trigger.New[0];
    if(op.StageName == 'Closed Won') {
        List<Task> tasks = new List<Task>();
        for(Integer i = 0; i < 200; i ++) {
            tasks.add(New Task(WhatId = op.Id, Subject='Follow Up Test Task'));
        }
        
        insert tasks;
    }
}