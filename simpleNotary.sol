pragma solidity ^0.4.19;

contract notary{
    bytes32 private hashedString;
    bytes32 private testHash;
    string private successOutput = "The string exists in the system and is a valid notarized string";
    string private failOutput = "The string does not exist in the system and is an invalid string";

    function notarize(string newString){
        hashedString = sha256(newString);
    }

    function checkIfValid(string newString) returns(string){
        testHash = sha256(newString);
        if(testHash == hashedString) {
            return successOutput;
        }
        return failOutput;
    }



}
