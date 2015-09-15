@isTest
private class TestRestrictContactByName {
    @isTest public static void test1() {
        Test.startTest();
        Contact c = new Contact(LastName='INVALIDNAME');
        Database.SaveResult t = Database.insert(c, false);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',t.getErrors()[0].getMessage());

        Test.stopTest();
    }
}