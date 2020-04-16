global class AnnualRevinewAmount {
    
global AnnualRevinewAmount(){
    list<Account> acct=[Select id,name,AnnualRevenue from Account  limit 4];
             }
    global void RevinewCtrl( string ids,integer Annualrevinew){
         Annualrevinew-=2300000;
        system.debug('hello'+Annualrevinew);
    }    
}