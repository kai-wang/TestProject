trigger HelloWorldTrigger on Account (before insert) {
    for(Account a : Trigger.New) {
        System.debug(a.Name);
    }
}