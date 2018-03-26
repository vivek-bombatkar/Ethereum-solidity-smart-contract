pragma solidity ^0.4.0;

/// @title calling and called contract in same file

contract caller{
    called toBeCalled = called(0xad8742d9b48be31f69ccea55b183c2ee7d4d8058);
    function getNum() constant returns(uint){
        return toBeCalled.getNum();
    }
}

contract called {
    uint num = 100;
    function getNum() constant returns(uint){
        return num;
    }
}
