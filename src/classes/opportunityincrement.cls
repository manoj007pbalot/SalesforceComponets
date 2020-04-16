global class opportunityincrement implements database.batchable<sObject>
{
   global database.QueryLocator start(database.batchableContext bc)
   {
          string query='select id,Name,BillingCity from Account limit 1';
          return database.getQueryLocator(query);
  }
  global void execute(database.batchableContext bc,list<Account>scope){
     
      list<Account> oppty=new list<Account>();
       for(Account opp:scope){
    
      Account c=new Account();
       c.Name='Apiro Solution Ltd';
       c.BillingCity='Jaipur';
       oppty.add(c);  
   }try{
       insert oppty;
       system.debug('Insert Record Successfull');
   }catch (exception e){
       system.debug('Error massage found'+e.getMessage());
       insert new DevOrg123__Error_Log__c(Name='Account Data Insert',DevOrg123__Date__c=system.today(),
                   DevOrg123__Message__c='Error is'+e.getMessage()+'in line number'+e.getLineNumber());
   }
        
   }
   global void finish(database.batchableContext bc){
   
   }
  }