pragma solidity ^0.4.19;

contract voting {
    uint[] private candidate = new uint[](2);
    //address[] private voter = new address[](50);


    function voting() {
        candidate[0] = 0;
        candidate[1] = 0;
    }

    function addAVote(uint vote){
        voter.push(msg.sender);
        if (vote == 0){
        candidate[0] = candidate[0]+1;
        }else if (vote == 1){
            candidate[1] = candidate[1]+1;
        }
    }

    function getVotes() returns(uint[]){
        return candidate;
    }

    function returnVoters() returns (address[]){
        return voter;
    }
}
