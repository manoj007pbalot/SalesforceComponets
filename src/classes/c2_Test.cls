@isTest
private class c2_Test{
  @isTest
  static void setupTestData(){
    test.startTest();
    Account accd = new Account(Name = 'Name235', Type = 'Prospect', Phone = '54343-17150', Fax = '54343-33615', Industry = 'Agriculture');
    Insert accd; 
    test.stopTest();
  }
  static testMethod void test_getacts_UseCase1(){
    List<Account> accd  =  [SELECT Name,Type,Phone,Fax,Industry from Account limit 1];
    System.assertEquals(false,accd.size()>0);
    
    c2 obj01 = new c2();
    obj01.getacts();
  }
}