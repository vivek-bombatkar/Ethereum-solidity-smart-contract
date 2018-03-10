pragma solidity ^0.4.0;

/// @title my first smart contarct ;-) 

contract HelloWorld{
    
    string word = "Hello ";
    
    /// @dev function to concat two string
    function strConcat(string _a, string _b) internal returns (string){
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        string memory abcde = new string(_ba.length + _bb.length );
        bytes memory babcde = bytes(abcde);
        uint k = 0;
        for (uint i = 0; i < _ba.length; i++) babcde[k++] = _ba[i];
        for (i = 0; i < _bb.length; i++) babcde[k++] = _bb[i];
        return string(babcde);
    }
    

    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string helloName) returns(string){
        word = strConcat(word , helloName);
        return word;
    }
}
