pragma solidity ^0.4.17;

contract bank{
    uint private balance;

    function bank(uint newBalance){
        balance = newBalance;
    }

    function deposit(uint newFund){
        balance = balance + newFund;
    }

    function withdraw(uint amount){
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
