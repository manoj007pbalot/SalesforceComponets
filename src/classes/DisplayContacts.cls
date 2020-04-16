public class DisplayContacts {
public List<Contact> conList {get;set;}
    public DisplayContacts(ApexPages.StandardSetController controller) {

    }
    
    public PageReference ContactLists()
    {
    if(ApexPages.currentPage().getParameters().get('id') != null)
      conList = [Select id,Name,Phone,Email from contact where accountId =: ApexPages.currentPage().getParameters().get('id')];
     return null;
    }   
}