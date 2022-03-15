public class Create_new_acc  {
    public List<Account> getAccounts(){
        List<Account> newList = new List<Account>{
            new Account(Name='Test1',Type='prospect'),
            new Account(Name='Test2',Type='prospect'),
            new Account(Name='Test3',Type='prospect')};
        upsert newList;
        System.debug(newList);
        return newList;
    }
    
}