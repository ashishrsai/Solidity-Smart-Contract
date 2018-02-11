pragma solidity ^0.4.19;

contract notes {
  string private note;
  address owner;

  modifier onlyOwner{
      require(owner == msg.sender);
      _;
  }

  function notes(){
      owner = msg.sender;
  }

  function saveNotes(string newString) onlyOwner {
      note = newString;
  }

  function returnNote() onlyOwner returns(string) {
      return note;
  }
}
