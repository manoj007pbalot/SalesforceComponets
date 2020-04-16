public class SaveRecCustomCtrl {

 public account a{get;set;}

 public list<account> lstAcc;

 public SaveRecCustomCtrl (){
 a = new account();
 }

 public list<account> getlstAcc(){

 lstacc = [select id,name from account];

 return lstacc;
 }

 
 Public pagereference SaveRec(){

  upsert a;
  pagereference p=new pagereference(a.id);
  return p;
 }

 Public pagereference Cancel(){

  //insert a;
  pagereference p=new pagereference(a.id);
  return p;
 }
}