public class RerenderPageMessages {
    public boolean acc{get;set;}
public RerenderPageMessages(ApexPages.StandardController stdController) {
}

public PageReference save() {
     if(!acc == null){
       //  ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM, 'Successfully...'));  
    }
    else{
       ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Error Message!'));        
    
    }
    
    
    return ApexPages.currentPage(); 
    
}

}