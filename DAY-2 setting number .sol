// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract Day2 {
    //set number
    uint256 public number;

    function setNumber(uint256 _number) public {
        number = _number;
    }

    function getNumber() public view returns (uint256) {
        return number;
    }

    //mapping
    mapping(uint256 => string) public map;

    function setNameAndAge(string memory _name, uint256 id) public {
        map[id] = _name;
    }

    function getNameById(uint256 id) public view returns (string memory) {
        return map[id];
    }
}
