public class AddAccountController {
    
    public List <Account> account = new List <Account>();
    public Account createAcc{ get; set;}  
    public AddAccountController() {       
       createAcc = new Account();

    }
    
    public List <Account> getAccount() {
        account = [SELECT Id, Name, BillingCity, Type FROM Account order by createddate desc limit 30];
        insert createAcc;
             
        return account;
    }
    
    public PageReference cancel() {
        return null;
    }
    
    public PageReference save() {
        system.debug('act name:' + createAcc.name + ' was saved! ');
        
        insert createAcc;
        
        return null;
    }
    
    public void deleteLast()
    {
        delete createAcc;
    }
    /*List<Account> toUPD = new List<Account>();
     for(Account updateAcc:createAcc){
            if (updateAcc.BillingCity == 'Null'){
            updateAcc.BillingCity == 'MINSK';
                toUPD.add(updateAcc);
            update toUPD;
        }
        }*/


 
}