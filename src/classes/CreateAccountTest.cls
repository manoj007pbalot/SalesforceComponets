@isTest
public class CreateAccountTest {
    @testVisible
static testMethod void testInsertAccount()
  {
  CreatingAccount ca = new CreatingAccount();
  ca.createAccount('TestclassAcc1');
  
  }
}