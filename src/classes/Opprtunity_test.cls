@isTest class Opprtunity_test {
    @isTest static void show(){
        List<Account> accList=new List<Account>();
        for(Integer i=0;i<200;i++){
          Account acc=new Account();
           acc.name='Rajesh kumar';
            acc.BillingCity='UK';
            accList.add(acc);
            
        }
        insert accList;
        Test.startTest();
        opportunityincrement job1=new opportunityincrement();
        Database.executeBatch(job1);
        Test.stopTest();
           
    }

}