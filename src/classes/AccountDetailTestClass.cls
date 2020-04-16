@isTest
public class AccountDetailTestClass {
   @isTest
    Static void setup(){
      
        Account obj=new Account(Name='Kamal',Phone='9672257740');
        Insert obj;
       
       }
    @isTest
    Static void getup(){
        List<Account> obj=[Select id,Name,Phone from Account];
         System.assertEquals(false,obj.size()>0);
    AccountDetail obj01 = new AccountDetail();
    obj01.getacts();
  }
}