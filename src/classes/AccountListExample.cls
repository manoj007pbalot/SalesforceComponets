public class AccountListExample {
    List<Account> accountlists {get;set;}
    public AccountListExample(){
        accountlists=new List<Account>();
        for(Account acc:[select Id,Name,Phone from Account limit 4]){
               accountlists.add(acc);
            system.debug('Account Detailis '+acc);
        }
    }
 }