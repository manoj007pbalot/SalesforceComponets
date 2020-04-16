public class BasicInformations {
   public Basic_Info__c bi=new Basic_Info__c();
   public List<Basic_Info__c> allrecords {get;set;}
   
   public BasicInformations (ApexPages.StandardController controller)
   {
      bi=(Basic_Info__c)controller.getRecord();
      
        allrecords=new List<Basic_Info__c>(); 
      
   }
   public pageReference Add_Row()
   {
      allrecords.add(bi);
      return null;
    }
    public pageReference save(){
       insert allrecords;
       return null;
    }
}