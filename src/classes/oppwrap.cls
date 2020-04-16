public class oppwrap {
 public OpportunityFieldHistory ofh {get; set;}
    public Date oldDate {get; set;}
    public Date newDate {get; set;}
    public oppwrap(OpportunityFieldHistory ofh){
        this.ofh = ofh;
        this.oldDate = Date.valueOf(ofh.oldValue);
        this.newDate = Date.valueOf(ofh.newValue);
    }
    public list<oppwrap> getOpportunity(){
    List<oppwrap> lstoppwrap = new List<oppwrap>();
    for(OpportunityFieldHistory ofh : [select opportunity.name, opportunity.closedate, opportunity.amount, OldValue, NewValue, Field, createddate from OpportunityFieldHistory where createddate = last_week and field='CloseDate']){
        lstoppwrap.add(new oppwrap(ofh));
    }
        return lstoppwrap;
}
}