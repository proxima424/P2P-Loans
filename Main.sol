pragma solidity ^0.8.14 ;

// loan struct



contract Main {
     public address owner ;

     // sets the owner variable to the contract caller

     constructor(){            
        owner = msg.sender ;
     }

   //keeps track of total users registered
     private uint usercount ;  
    
   //can be used to check whether a user exists or not
     mapping (address => bool ) public exists ;

   //a struct to maintain data about user
     struct userdata {
        address useraddress ;
        bytes32 name ;
        uint256 friendcount ;
     }

   //maps each address to userdata struct
      mapping (address => userdata) private Account ; 


   //first time user will call this account
     function createaccount( bytes32 _name ) {
       require( msg.sender == owner , 'Unauthorized') ;
       require( exists[msg.sender] == false , 'Account already exists' );
       usercount++ ;
       Account[owner].name = _name ;
       exists[owner] = true ;  
     }
     
   //to check if a given address uses this service
     function ifuserexists ( address _address ) returns bool{
        if( exists[address] == true ){
            return true ;
        }
     }

   //mapping to see whether two addresses are friends
   mapping (address => mapping(address => bool) ) private friendstatus ;
   
     // add friend by writing his address 
   function addFriend ( address _address   ){
      require( ifuserexists(_address) == true , 'Given address is not registered') ;
      require() ; // if they are already friends . this should be both ways
      friendstatus[msg.sender][_address] = true ;
      friendstatus[_address][msg.sender] = true ;
      Account[owner].friendcount++;
      Account[_address].friendcount++;
     }

     struct Loan {
      
     }

     struct request {
      address borrower ;
      uint amount ;
      uint interest ;
     }
     





}