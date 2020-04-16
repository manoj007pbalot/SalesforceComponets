public class ReadDocumentFile {
    public void show(){
        /*try{
            Document documen=[select id,body,name from Document where id='0150o00000Gsxcz' limit 1];
        Blob myfile =documen.body;
        String myfile1=documen.Name;
        DOM.Document doc=new DOM.Document();
        doc.load(string.valueof(myfile.tostring()));
        }catch(Exception e){
            system.debug('Name :' + e.getMessage());
        }*/
        
        List<document> documentList = [select id, body,name from document where id='0150o00000Gt1xD'];
        string strCsvBody = '';
        //string[] arrCsv;
        List<String> ls=new List<String>();
        for(document doc: documentList){
           strCsvBody = doc.body.toString();           
           ls.add(strCsvBody);
           for(String s : ls){
                //system.debug(s.replace('Id,Industry',''));
             String [] accStr=s.split(',');
               for (integer i=1;i<4;i++){
                   //system.debug('Ids :' + accStr[i]);
                   AnnualRevinewAmount acctr=new AnnualRevinewAmount();
                   acctr.RevinewCtrl(accstr[i],32000);
                  //system.debug('Annual Revinew'+acctr);
                   //system.debug('Hello');
                  list<id> restv=new list<id>();
                  restv.add(accStr[2]);
                  system.debug('Ids'+restv);
                  list<Account> accounts=[select id,name from Account];
                   //system.debug('accountid:'+accounts);
               }
            }       
        
        }
        
    }
}