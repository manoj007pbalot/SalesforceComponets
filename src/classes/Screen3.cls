public class Screen3 {
 public Account account {get;set;}
 
public Screen3(){
   Id id=ApexPages.currentPage().getParameters().get('Id');
   account=[select Id,name,phone from Account where Id=:id];
}
}