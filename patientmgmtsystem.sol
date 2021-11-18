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
       // this is used later when setting the msg.address to the "AccountOwner" variable
    address public accountOwner;
        // gives a specific address to patients in an array similar to a dictionary.
    mapping(address=> Patient) public balloters;
       // this function makes sure that the person who calls the function has the same address as the account that called the function..
     modifier accountOwnerOnly() {
        require(msg.sender == accountOwner);
        // this line exhibits, continuing the rest of the code if the require passes.
        _;
    }
    // add a "candidate" to the candidates array
    function addPatient(string memory _name, uint _age, uint _weight, uint _height) accountOwnerOnly public {
        patients.push(Patient(_name,_age,_weight,_height));
    }
    // returns number of patients
    function getNumPatient() public view returns (uint) {
        return patients.length;
    }

}
