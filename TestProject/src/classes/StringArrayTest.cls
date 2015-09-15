public class StringArrayTest {
    public static String[] generateStringArray(Integer n) {
        String[] p =  new list<String>();
        
        for (Integer i = 0; i < n; i++) {
        	p.add('Test ' + i);
        }
        
        return p;
    }
}