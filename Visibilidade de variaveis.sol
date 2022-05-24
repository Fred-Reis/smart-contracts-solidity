//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// internal => visível apenas dentro do contrato e derivados
// private => visível apenas dentro do contrato (não é possível acessar nem mesmo por derivados)
// public => visível de fora e dentro do contrato

contract Visibilidade {
    string private nome;

    function salvaNome(string memory _nome) external {
        nome = _nome;
    }

    // uma função external ou public pode expor variaveis privadas ATENÇÂO !!!
    function qualNome() external view returns (string memory) {
        return nome;
    }

    function returnName() internal view returns (string memory) {
        return nome;
    }
}

contract Other is Visibilidade {
    // uma função external ou public pode expor funções intenal ATENÇÂO !!!
    function extenalInternalFunction() external view returns (string memory) {
        return returnName();
    }
}
