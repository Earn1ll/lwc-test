public class PropertyUtility {
    
    public static void newListedProperties(){
        List<Property__c> newPropList = [Select Name,id,Days_On_Market__c,Broker__r.Email__c from Property__c where Days_On_Market__c <31];
        for(Property__c proplist :newPropList){
            String propEmail = proplist.name+':'+proplist.Broker__r.Email__c;  
            system.debug(propEmail);
        }
    }
    
}