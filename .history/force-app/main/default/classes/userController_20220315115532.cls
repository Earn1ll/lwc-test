public with sharing class userController {
    public userController() {
        @AuraEnabled(cacheable=true)
        public static List<User> getUsers(){
            return[SELECT Id, FirstName,LastName FROM User LIMIT 100]; 
        }
    }
}
