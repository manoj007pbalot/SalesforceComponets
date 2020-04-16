public class dynamicTextColor_Controller {
private List<Opportunity> lstOpps;  // we will color records in this based on amount

    public dynamicTextColor_Controller()
    {}
    
    public List<Opportunity> getOpps()
    {
        lstOpps = [Select Name, Amount From Opportunity Where Amount != NULL Limit 20];
        return lstOpps;
    }    
}