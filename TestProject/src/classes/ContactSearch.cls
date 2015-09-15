public class ContactSearch {
    public static List<Contact> searchForContacts(String lName, String postCode) {
        List<Contact> c = [SELECT ID, Name FROM CONTACT WHERE LastName = :lName AND MailingPostalCode = :postCode];
        return c;
    }
}