public class AccountExample {
    public List<Account> ac{get;set;}
    public boolean checked{get;set;}
    public AccountExample(){
        ac=new List<Account>();
        checked=false;
        for(Account a:[select id,name,billingcity,phone from Account Limit 5]){
            ac.add(a);
        }
    }
    public void processChecked(List<Account> m){
        ac=m;
        checked=false;
    } 
}