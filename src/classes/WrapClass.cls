public class WrapClass {
    public list<Account> acclist;
    public list<Wrapperclass> wraplist{get;set;}
     public list<Wrapperclass> wraplist2{get;set;}
    public WrapClass(){
        acclist=new list<Account>();
        Wraplist=new list<Wrapperclass>();
        Wraplist2=new list<Wrapperclass>();
        acclist=[select id,Name,Phone from Account];
        for(Account a:acclist){
            Wrapperclass wrap=new Wrapperclass();
            wrap.acct=a;
            Wraplist.add(wrap);
        }
    }
    public void selectedValue(){
        Wraplist2.clear();
        for(Wrapperclass wr:Wraplist){
            if(wr.check==true){
                 Wraplist2.add(wr);  
            }
         
        }
    }
    public class Wrapperclass{
        public account acct{get;set;}
        public boolean check{get;set;}
        public Wrapperclass(){
            acct=new account();
            check=false;
        }
    }
}