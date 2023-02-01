// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.17;

contract TOken{
    string public name="HardHat Token";
    string public symbol="HHT";
    uint public TotalSupply= 10000;

    address public owner;

    mapping ( address => uint) balances;

    constructor(){
        balances[msg.sender]=TotalSupply;
        owner= msg.sender;
    }

    function Transfer(address _to, uint _amount) external{
        require(balances[msg.sender]>=_amount,"not enough balance");
        balances[msg.sender]-=_amount;
        balances[to]+=_amount;
    }

    function CheckBalance(address _account) external view return (uint){
        return balances[_account];
    }
}