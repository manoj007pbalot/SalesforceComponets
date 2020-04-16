public class C4{

          list <Account> acts1;

        public list <Account> getacts1()
        {
            return acts1;
        }
        public pagereference direct()
        {

          acts1 = [Select Name , Type , Industry , Phone from Account where type='Customer - Direct'];
          return null;
        }

        public pagereference channel()
        {

         acts1 = [Select Name , Type , Industry , Phone from Account where type='Customer - Channel'];
         return null;
        }

}