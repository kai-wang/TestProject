@isTest

private class DMLTestClass {
    static testMethod void test() {
        List<Account> acctList = new List<Account>();
        acctList.add(new Account(Name='Acme1'));
        acctList.add(new Account(Name='Acme2'));
        
        insert acctList;
        
        Account masterAcct = [SELECT Id, Name FROM Account WHERE Name = 'Acme1' LIMIT 1];
        Account mergeAcct = [SELECT Id, Name FROM Account WHERE Name = 'Acme2' LIMIT 1];
        
        Contact c = new Contact(FirstName='Joe', LastName='Merged');
        c.AccountId = mergeAcct.Id;
        
        try {
            merge masterAcct mergeAcct;
        } catch(DmlException e) {
            System.debug('An unexpected error has occurred: ' + e.getMessage());
        }
        
        masterAcct = [SELECT Id, Name, (SELECT FirstName, LastName from Contacts) FROM Account WHERE Name = 'Acme1' LIMIT 1];
        
        System.assert(masterAcct.getSObjects('Contacts') != null);
        System.assertEquals('Joe', masterAcct.getSObjects('Contacts')[0].get('FirstName'));
        System.assertEquals('Merged', masterAcct.getSObjects('Contacts')[0].get('LastName'));
        
        Account[] result = [SELECT Id, name from account where name = 'Acme2' LIMIT 1];
        System.assertEquals(0, result.size());
    }   
}