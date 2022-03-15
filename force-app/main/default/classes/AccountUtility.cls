public class AccountUtility {
    public static void viewAnnualRevenue(){
        List<Account>accountsList =[Select Name, AnnualRevenue FROM Account];
        for(Account accl:accountsList){
            String acctRev = 'Account Name:' + accl.Name + ', Annual Revenue:' + accl.AnnualRevenue;
            system.debug(acctRev);
        }
    }
}