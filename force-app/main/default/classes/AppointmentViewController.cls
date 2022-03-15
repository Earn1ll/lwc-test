public class AppointmentViewController {
    
    public String myText {get;set;}
    public String myText1 {get;set;}
    public String myText2 {get;set;}
    public List<Doctor__c> doctorList {get;set;}
    public List<Patient__c> patientList {get;set;}
    public List<SelectOption> DoctorSelectList {get;set;}
    public List<SelectOption> PatientSelectList {get;set;} 
    public List<Appointment__c> getTable {get;set;}
    public List<Doctor__c> timeStart {get;set;}
    public Appointment__c appTime {get; set;}
    

    public AppointmentViewController () {
        myText ='Select a doctor    ';
        myText1 ='Select a patient    ';
        myText2 = 'minutes';
/*doctor picklist */
        doctorList = [SELECT Id, Name FROM Doctor__c ORDER BY Name ASC];
        
        DoctorSelectList = new List<SelectOption>();
        for (Doctor__c item : doctorList) {
        	DoctorSelectList.add(new SelectOption(item.Id,item.Name));  
        }
/*patient picklist */
        
        
        patientList = [SELECT Id, Name FROM Patient__c ORDER BY Name ASC];
        PatientSelectList = new List<SelectOption>();
        for (Patient__c item : patientList) {
        	PatientSelectList.add(new SelectOption(item.Id,item.Name));  
        }
/*app. Time/Date */
        this.appTime = new Appointment__c();
        
        getAppointment ();
       
   	}
/*  time start   */
   public void getWorkingTime () {
        timeStart = [
            SELECT Id,Working_House_End__c,Working_Hours_Start__c
            FROM Doctor__c     
	    ];
    }
    
/*table */
    
    public void getAppointment () {
        getTable = [
            SELECT Id,Doctor__c,Patient__c,Appointment_Date__c,Duration_in_minutes__c 
            FROM Appointment__c  ORDER BY Name ASC     
	    ];
    }
	public String sortingColumn = 'Name'; 
 
 
 
	public String query = 'SELECT Id, Name, Doctor__c, Patient__c, Appointment_Date__c, Duration_in_minutes__c ' +
                      'FROM Appointment__c ' +
                      'ORDER BY ' + sortingColumn;
 
	
 
/*Start Pagination*/

	public ApexPages.StandardSetController setList {
		get {
            if (setList == null) { 
                setList = new ApexPages.StandardSetController(Database.query(query));
            }
            if (this.PageSize == null) PageSize = 20; 
            setList.setPageSize(PageSize); 
            return setList;
		} set;
	}
    public Integer PageSize {
        get; set { 
            if(value != null) this.PageSize = value;
        }
    }
    public Integer PageNumber {
        get { 
            this.PageNumber = setList.getPageNumber();
            return this.PageNumber;
        }
        set { 
            setList.setPageNumber(value); 
        }
    }
    public Integer TotalPages { 
        get {
            if (setList.getResultSize() <= 10)
                this.TotalPages = 1;
            if (Math.Mod ( setList.getResultSize(),setList.getPageSize() ) == 0)
                this.TotalPages = ( setList.getResultSize()/setList.getPageSize() );
            else this.TotalPages = ( setList.getResultSize()/setList.getPageSize() )+1;
            return totalpages;
        }
        set;
    }
    public List<Appointment__c> getAppointments() {
        return (List<Appointment__c>) setList.getRecords();
    }
/*End Pagination*/   
	public PageReference addNewAppt() {
     					return null;
							}
    
}