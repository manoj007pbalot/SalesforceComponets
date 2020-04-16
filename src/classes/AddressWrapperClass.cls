public class AddressWrapperClass {

    public string name;
    public string addr1;
    public list<Address> addr;
    public AddressWrapperClass(string name,string addr1,string city,string street,integer code){
        this.name=name;
        this.addr1=addr1;
        addr=new list<Address>();
        
    }
}