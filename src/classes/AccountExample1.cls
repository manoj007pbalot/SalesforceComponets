public class AccountExample1 {
    public boolean isSaved;
public AccountExample1(ApexPages.StandardController controller){
        
    }
public PageReference quicksave() {
    // do some save stuff
    isSaved = true;
    return null;
}
}