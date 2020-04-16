trigger ExampleTrigger on Contact (after insert) {
 for(Contact con : Trigger.NEW){
        if(Trigger.isInsert && con.email==NULL){
            con.addError(' You can not save the record without email !!!');
        }
    }}