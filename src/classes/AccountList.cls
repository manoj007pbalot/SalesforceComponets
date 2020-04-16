public class AccountList {
//List<Account> listacc=new List<Account>();
List<Contact> conList=new list<Contact>();
  public Id accountid;
    
    public void Display(id accId){
        accountid=accId;
    Account ac=[Select id,name,(select id,FirstName,phone from Contacts) from Account where id=:accountid];

    for(Contact con : ac.contacts)
    {
    //con.Id
       system.debug(con);
    }       
        //system.debug(con);
       // listacc=[Select id,name,(select id,phone from Contact) from Account where id=:accountid];
       }
}