public class Screen2 {
 public Account account {get;set;}
 
public Screen2(){
   Id id=ApexPages.currentPage().getParameters().get('Id');
   account=[select Id,name,phone from Account where Id=:id];
}
public pagereference save(){
update account;
pagereference pr=new pagereference('/apex/screen3?id='+account.id);
return pr;
}
}