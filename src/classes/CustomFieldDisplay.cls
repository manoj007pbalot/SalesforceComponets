public class CustomFieldDisplay {
    public List<Position__c> pos{get;set;}
    public CustomFieldDisplay(){
        pos=[Select Name,Min_Salary__c from Position__c];
    }
}