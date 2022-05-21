//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// external => visível apenas de fora do contrato
// public => visível de fora e dentro do contrato
// internal => visível apenas dentro do contrato e derivados
// private => visível apenas dentro do contrato (não é possível acessar nem mesmo por derivados)

contract Visibilidade {
    string meu_nome = "Fred";

    function qualNome_Public() public view returns (string memory) {
        return string(abi.encodePacked("Public => ", meu_nome));
    }

    function qualNome_External() external view returns (string memory) {
        return string(abi.encodePacked("External => ", meu_nome));
    }

    function qualNome_Private() private view returns (string memory) {
        return string(abi.encodePacked("Private => ", meu_nome));
    }

    function qualNome_Internal() internal view returns (string memory) {
        return string(abi.encodePacked("Internal => ", meu_nome));
    }
}

contract Secondary is Visibilidade {
    function getInternalFunctions() public view returns (string memory) {
        return qualNome_Internal();
    }

    function getPrivateFunctions() public view returns (string memory) {
        return qualNome_Private(); // não funciona para funções privadas
    }
}
