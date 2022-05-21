// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Parametros {
    uint256 number = 10;

    // por padrão quando não definimos o parametro, ele é do tipo transaction e tem custo (gas)
    function getNumber() external returns (uint256) {
        return number;
    }

    // usando o view estamos dizendo que não vamos alterar nada no contrato portanto não tem custo (gas)
    function getNumberView() external view returns (uint256) {
        return number;
    }

    // usando o pure dizemos que a função apenas executa ações internas
    // e não altera nada na Blockchain e não tem custo (gas)
    function calc(uint256 _a, uint256 _b) external pure returns (uint256) {
        return _a + _b;
    }
}
