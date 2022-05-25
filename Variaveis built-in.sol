//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract BuiltIn {
    uint256 public id;
    address public miner_address;
    uint256 public difficulty;
    uint256 public block_number;
    uint256 public gas_limit;
    uint256 public timestamp;

    address public called_by;
    uint256 public value;

    address public sent;

    constructor() payable {
        id = block.chainid; // => id da rede
        miner_address = block.coinbase; // => endereço do minerador que minerou o bloco
        difficulty = block.difficulty; // => dificuldade do bloco
        gas_limit = block.gaslimit; // => limite de gas do bloco
        block_number = block.number;

        called_by = msg.sender; // => endereço de quem enviou a transação atual pode ser um Smart Contract ou um usuário (wallet)
        value = msg.value; // => valor que foi enviado para a transação

        sent = tx.origin; // => endereço de quem enviou a transação ORIGINARIA (não o endereço de quem enviou a transação atual) SERÁ SEMPRE UMA WALLET
    }
}
