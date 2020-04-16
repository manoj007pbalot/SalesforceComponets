public class Candidatequery{
    public List<Candidate__c> cs{get; set;}
    public Candidatequery()
    {
    cs = new List<Candidate__c>();
       for (Candidate__c c : [Select id, First_Name__c,Phone__c,Email__c from Candidate__c])
       {       
           cs.add(c);
       }
    }
}