public class CheckBoxApexClass 
{
    public List<wrapaccount> wrapaccountlist {get;set;}
    public List<Account> selectedAccounts {get;set;}
    public CheckBoxApexClass() {
        if(wrapaccountlist==null) {
        wrapaccountlist=new List<wrapaccount>();
        for(Account a :[select id,name,billingcity,phone from Account limit 3]){
            wrapaccountlist.add(new wrapaccount(a));
            
        }
    }
   }
    public void ProcessSelected(){
        selectedAccounts=new List<Account>();
        for(wrapaccount wrapobj:wrapaccountlist){
            if(wrapobj.isSelected==true){

                selectedAccounts.add(wrapobj.accn);
                
            }
        }
    }
    public class wrapaccount{
        public account accn {get;set;}
        public boolean isSelected {get;set;}
        public wrapaccount(Account a){
            accn=a;
            isSelected=false;
        }
    }
}