public class AccountHandler {
    public static Account insertNewAccount(String account) {
        try{
            Account accnt = new Account(Name=account);
            insert accnt;    
            return accnt;
        }catch(DmlException e) {
            return null;
        }
    }
}