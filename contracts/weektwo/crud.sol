// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Tuples {
    struct Item {
        string name;
        uint256 age;
        uint256 id;
        bool verified;
    }

    mapping(uint256 => Item) public items;
    uint256 public nextId = 0;

    function create(string memory _name, uint256 _age) public {
        items[nextId] = Item(_name, _age, nextId, true);
        nextId++;
    }

    function read(uint256 _id) public view returns (string memory, uint256, uint256, bool) {
        Item memory item = items[_id];
        return (item.name, item.age, item.id, item.verified);
    }

    function update(uint256 _id, string memory _name, uint256 _age) public {
        require(_id < nextId, "Item does not exist");
        Item storage item = items[_id];
        item.name = _name;
        item.age = _age;
    }

    function deleteItem(uint256 _id) public {
        require(_id < nextId, "Item does not exist");
        delete items[_id];
    }
}
