pragma solidity ^0.4.17;

contract bank{
    uint private balance;
    address private owner;

    function bank(uint newBalance){
        balance = newBalance;
        owner = msg.sender;
    }

    modifier ownerFunc{
        require(owner == msg.sender);
        //we use the _ in order to execute the function that we use our custom modifier on
        _;
    }

    function deposit(uint newFund) ownerFunc {
        balance = balance + newFund;
    }

    function withdraw(uint amount) ownerFunc {
        if(balance >= amount){
            balance = balance - amount;
        }

    }

    function getBalance() returns(uint){
        return balance;
    }
}
contract newContract is bank(20){

    string private name;
    uint private age;

    function setName(string newName){
        name = newName;
    }
    function getName() returns(string){
        return name;
    }

    function setAge(uint newAge){
        age = newAge;
    }

    function getAge() returns(uint){
        return age;
    }

}
