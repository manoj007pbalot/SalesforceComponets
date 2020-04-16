global class SummarizeAccountTotal implements Database.Batchable<sObject>, Database.Stateful{

   global final String query;
   global Set<Id> failureIdsSet;
   global Map<Id, Account> accountmap;
  
   global Database.QueryLocator start(Database.BatchableContext BC){
       string query= 'Select Id,Name From Account Limit 10';
      return Database.getQueryLocator(query);
   }
   
   global void execute(Database.BatchableContext BC, List<sObject> scope){
          failureIdsSet = new Set<Id>();
          Database.SaveResult[] srList = Database.insert(scope, false);
          // Iterate through each returned result 
          for (Database.SaveResult sr : srList) {
             if (sr.isSuccess()) {
                 system.debug(sr.getId());
             }else{
                    for(Database.Error err : sr.getErrors()) {
                        System.debug(err.getStatusCode() + ': ' + err.getMessage());
                       // failureIdsSet.add(err.getId());
                    }
             }
         }
   
   }
global void finish(Database.BatchableContext BC){

}
}