// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract meuContrato {
    uint256 inteiros;
    string textos;
    address enderecos;
    bool boolean;

    bytes32 qualquer_coisa_ate_32_bytes;

    // listas => são arrays mas de um tipo único de dados
    uint256[] inteiros_lista;
    string[] textos_lista;
    address[] enderecos_lista;
    bool[] booleanos_lista;

    // cria uma espécie de objeto que vai receber o 1º parâmetro como chave e o 2º como valor
    mapping(address => uint256) map_de_enderecos_para_inteiros;

    // uma especie de interface TS para criação de objetos
    struct Usuario {
        uint256 id;
        string name;
        address endereco_carteira;
    }

    // uma variavel de categorias
    enum TipoDeUsuario {
        ADMIN,
        USER
    }
}
