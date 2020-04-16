public class Screen1 {
 public Account account {get;set;}
 
public Screen1(){
  account=new Account();
}
public pagereference save(){
insert account;
pagereference pr=new pagereference('/apex/screen2?id='+account.id);
return pr;
}
}