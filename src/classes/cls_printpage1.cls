public class cls_printpage1 {
    // retrieves the list of accounts backing the page
    Public List<Account> accs;
    public List<Account> getAccounts()
    {
        if (null==accs)
        {
            accs=[select id, Name,BillingStreet, BillingCity, BillingPostalCode from Account
                  where BillingCity != null and BillingPostalCode!=null limit 5];
        }
        
        return accs;
    }

// retrieves the list of row wrappers
List<RowWrapper> rows;
    public List<RowWrapper> getRowWrappers()
    {
        if (null==rows)
        {
            rows=new List<RowWrapper>();
            
            // create a row for each field - there are 4 of these, Name, Street, City and PostCode
            for (Integer idx=0; idx<5; idx++)
            {
                rows.add(new RowWrapper());
            }
            
            // iterate the accounts and populate the rows
            for (Integer idx=0; idx<getAccounts().size(); idx++)
            {
               // rows[0].addValue('Name');
                rows[0].addValue(getAccounts()[idx].Name);
               
              //  rows[1].addValue('BillingStreet');
                rows[1].addValue(getAccounts()[idx].BillingStreet);
               
              //  rows[2].addValue('BillingCity');
                rows[2].addValue(getAccounts()[idx].BillingCity);
               
              //  rows[3].addValue('BillingPostalCode');
                rows[3].addValue(getAccounts()[idx].BillingPostalCode);
            }
       
             rows[0].addLabels('Name');
             rows[1].addLabels('BillingStreet');
             rows[2].addLabels('BillingCity');
             rows[3].addLabels('Billling PostalCode');
        }
        
        return rows;
    }
   
    public class RowWrapper
    {
     // the values (cells) making up this row
     public List<String> values {get; set;}
    
     public List<String> labels {get; set;}
     // constructor
     public RowWrapper()
     {
      values=new List<String>();
      labels=new List<String>();
     }
     
     // append a value (cell) to the row
     public void addValue(String value)
     {
      values.add(value);
     }
    
     //add all labels to column
     public void addLabels(String value){
      labels.add(value);  
     }
   
    }
}