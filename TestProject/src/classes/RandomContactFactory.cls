public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer num, String s) {
        List<Contact> contactList = new List<Contact>();
        for(Integer i = 0; i < num; i++ ) {
            Contact c = new Contact(FirstName = 'Test ' + i, LastName = s);
            contactList.add(c);
        }
        
        return contactList;
    }
}