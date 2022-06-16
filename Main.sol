pragma solidity ^0.8.14 ;


contract Main {
     public address owner ;
     constructor(){
        owner = msg.sender ;
     }
     private uint usercount ;
     mapping (address => bool ) public exists ;
     
     struct userdata {
        address useraddress ;
        bytes32 name ;
        uint256 friendcount ;
     }

     
     mapping (address => userdata) private Account ; 

     

     function createaccount( bytes32 _name   ) {
        usercount++ ;
        Account[owner].name = _name ;
        exists[owner] = true ;  
     }

     function ifuserexists ( address _address ) returns bool{
        if( exists[address] == true ){
            return true ;
        }
     }
   
     // add friend by writing his address 
     function addFriend ( adddress _address   ){
      require() // if they are already friends . this should be both ways
      Account[owner].friendcount++;
     }
     





}