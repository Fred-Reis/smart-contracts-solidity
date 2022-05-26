//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Lists {
    string[] names;

    function insertName(string memory _name) external {
        names.push(_name);
    }

    function retornList() external view returns (string[] memory) {
        return names;
    }

    function readNome(uint256 _position) external view returns (string memory) {
        return names[_position];
    }

    function atualizaNome(uint256 _position, string memory _newName) external {
        names[_position] = _newName;
    }

    function removeName(uint256 _position) external {
        delete names[_position];
    }
}
