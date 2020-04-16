public class Example {
public static  Integer a;
    public Integer b;
public Example(){
        a=10;
    b=15;
    }
    public void add(){
        a=a+10;
        b=b+10;
        System.debug('value of a='+a);
        System.debug('value of b='+b);
        
    }
}