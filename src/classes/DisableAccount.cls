public class DisableAccount {
public  List<wrapaccount> wrapaccountlist {get;set;}
    public  List<Account> selectedAccounts {get;set;}
   
    public DisableAccount() {
        if(wrapaccountlist==null) {
        wrapaccountlist=new List<wrapaccount>();
            
        for(Account a :[select id,name,billingcity,phone from Account limit 4]){
            wrapaccountlist.add(new wrapaccount(a));
            
        }
    }
   }
    public void ProcessSelected(){
        selectedAccounts=new List<Account>();
        for(wrapaccount wrapobj:wrapaccountlist){
            if(wrapobj.ischecked==false){

                selectedAccounts.add(wrapobj.accn);
                }
        }
    }
    public class wrapaccount{
        public account accn {get;set;}
        public boolean ischecked {get;set;}
        public wrapaccount(Account a){
            accn=a;
            ischecked=true;
            
        }
    }
}