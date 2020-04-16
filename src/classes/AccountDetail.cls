public class AccountDetail {
List<Account> acts=[select Id,Name,Phone from Account Limit 4];

public List<Account> getacts(){
return acts;
}
}