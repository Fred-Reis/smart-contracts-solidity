// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Funcoes {
    // external => para permitir que a função seja chamada de fora do contrato
    // pure => indica que a função não altera nem lê dados da blockchain
    // returns => para indicar o tipo de retorno da função
    function sum(uint256 _a, uint256 _b) external pure returns (uint256) {
        return _a + _b;
    }

    string name = "Fred";

    // view => para funções que apenas lêem dados do contrato
    function getName() external view returns (string memory) {
        return name;
    }

    mapping(address => uint256) balances;

    // payable => para funções que recebem ether
    function investing() public payable returns (uint256) {
        balances[msg.sender] += msg.value;
        return balances[msg.sender];
    }
}
