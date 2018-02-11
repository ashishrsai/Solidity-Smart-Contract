pragma solidity ^0.4.17;

contract newContract {

    string private name;
    uint private age;

    function setName(string newName){
        name = newName;
    }
    function getName() returns(string){
        return name;
    }

}
