public class Sample {
 public Boolean Abool {get;set;}
    public Boolean Bbool {get;set;} 
    
    public sample()
    {
        Abool = false;
        Bbool = true;    
    }   
    public void callA()
    {
        Abool = true;
        Bbool = false;
    }   
   
}