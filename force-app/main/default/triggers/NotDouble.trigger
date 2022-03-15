trigger NotDouble on Appointment__c (before insert) {
    
  List<Appointment__c> appointmentList = [
      SELECT Appointment_Date__c,Doctor__c 
      FROM Appointment__c 
      WHERE Appointment_Date__c = :Trigger.new[0].Appointment_Date__c];
    
    if(appointmentList.isEmpty() == FALSE) {
        trigger.new[0].addError('This date is already reserved!');
    }
}