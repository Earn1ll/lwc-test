@isTest
private class AppointmentViewControllerTest {
    @isTest static void AppointmentViewControllerTest1() {
        Patient__c patient = new Patient__c(
           Name = 'Archer' 
       );
       insert patient;
        
        
        
       Doctor__c doctor = new Doctor__c(
           Name = 'Archibald' 
       );
       insert doctor;
       AppointmentViewController controller = new AppointmentViewController();
  }  
    
   /*   @isTest static void AppointmentViewControllerTest2() {  
        PageReference pageRef = Page.AppointmentViewController;
        Test.setCurrentPage(pageRef);
        ApexPages.StandardSetController  p=new ApexPages.StandardSetController ();
        
        p.PageSize();
        p.PageNumber();
        p.TotalPages();
      } */

        

	
        
    }