public class PositionExtension 
{
   public Position__c ps=new Position__c();
   public List<Position__c> allrecords {get;set;}
   
   public PositionExtension(ApexPages.StandardController controller)
   {
      ps=(Position__c)controller.getRecord();
      
        allrecords=new List<Position__c>(); 
      
   }
   public pageReference Add_Row()
   {
      allrecords.add(ps);
      return null;
    }
    public pageReference save(){
       insert allrecords;
       return null;
    }
}