public class Students {
   public  String name;
    Double salary;
    public Address1 add1;
    public Students(String name,Double salary,String city,Integer code){
        this.name=name;
        this.salary=salary;
        add1=new Address1();
        add1.city=city;
        add1.code=code;
      
       
        
    }
    
}