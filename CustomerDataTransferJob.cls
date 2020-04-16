global class CustomerDataTransferJob implements Database.Batchable<sObject> {
    private static Date startdate; 
    public String query;
    System.debug('Hello');
    global Database.QueryLocator start(Database.BatchableContext BC) {
        // collect the batches of records or objects to be passed to execute         
        List<Customer_Data_Transfer__c> oldCdt=[select id from Customer_Data_Transfer__c limit 10000];
         delete oldCdt;
        oldCdt=[select id from Customer_Data_Transfer__c limit 10000];
        if(oldCdt.size()>0){
          delete oldCdt;
        }
           startdate=system.today()-50;
           system.debug('Start Date : ' + startdate);
             // read start date and store in sdate variables
           string sdate=datetime.newInstanceGmt(startdate.year(),startdate.month(),startdate.day()).formatGmt('yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'');
           system.debug('Read Statrt Date : ' + sdate);
    
           date enddate=startdate-25;
           system.debug('End Date : ' +enddate);
              // read enddate date and store in edate variables
           string edate=datetime.newInstanceGmt(enddate.year(),enddate.month(),enddate.day()).formatGmt('yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'');
           system.debug('Read End Date :' + edate);  
            
           query='select id,name,AccountNumber,Phone,Industry from Account WHERE CreatedDate <'+sdate+' and CreatedDate >'+edate+' limit 10';
           return Database.getQueryLocator(query);       
    }
    
     
    global void execute(Database.BatchableContext BC, List<sObject> scope) {
        List<Account> accList = (List<Account>)scope;
        list<Customer_Data_Transfer__c> cdtdata=new List<Customer_Data_Transfer__c>();
        try{      
           for(Account acc:accList){
              Customer_Data_Transfer__c cdt=new Customer_Data_Transfer__c();
              cdt.Customer_Name__c         = acc.Name;
              cdt.Customer_Number__c       = acc.AccountNumber;
              cdt.Customer_Phone_Number__c = acc.Phone;
              cdt.Customer_Industry__c     = acc.Industry;
              cdtdata.add(cdt);
           }
             system.debug('***************CDT File******************' + cdtdata);
             insert cdtdata;
             system.debug('**************Record has been inserted successfully************'); 
        }catch(Exception e){
             system.debug(e.getMessage());
        }
         
    } 
    
    
    global void finish(Database.BatchableContext BC) {
        // execute any post-processing operations
        system.debug('************Finish Process***********');
        
        //System.debug('Account : ' + );
   
  }
    
}