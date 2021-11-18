pragma solidity >= 0.4.0 <  0.6.0;
// smart contract which will create a patient data management system
contract patientsystem {
    struct Doctor {
        // authorized means that they are authorized to access patient's data.
        bool authorized;
    }
    // struct "Patient" can be declared as a variable.
    struct Patient{
        // keep track of the patients biometric information.
        string name;
        uint weight;
        uint age;
        uint height;
    }
    // Patient array to hold the patient's information
    Patient[] public patients;
       
 

}
