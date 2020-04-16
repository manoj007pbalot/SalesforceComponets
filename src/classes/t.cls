public class t {
public List<SelectOption> myList {get; set;}
    public boolean showAccount {get; set;}
    public boolean showContact {get; set;}
    public String SelectedVal {get; set;}
    
    public t()
    {
        myList = new List<SelectOption>() ;
        myList.add(new SelectOption('Yes' , 'Yes')) ;
        myList.add(new SelectOption('No' , 'No')) ;
        
        showAccount = false ;
        showContact = false ;
        SelectedVal = 'No' ;
    }
    
    public PageReference RenderSec()
    {
        if(SelectedVal == 'Yes')
        {
            showAccount = true ;
            showContact = false ;
        }
        if(SelectedVal == 'No')
        {
            showAccount = false ;
            showContact = true ;
        }
        return null ;
    }
}