@isTest
private class TestVerifyDate {
    @isTest static void test1() {
        Date d1 = Date.today();
        Date d2 = d1.addDays(10);
        Date d = VerifyDate.CheckDates(d1, d2);
        System.assertEquals(d2, d);
    }
    
    @isTest static void test2() {
        Date d1 = Date.today();
        Date d2 = d1.addDays(40);
        Date d3 = d1.addMonths(1).toStartOfMonth();
        Date d = VerifyDate.CheckDates(d1, d2);
        System.assertEquals(d, d3.addDays(-1));
    }
}