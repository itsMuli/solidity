// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract Tuples {
    struct Item {
        string name;
        uint256 age;
        uint256 id;
        bool verified;
    }

    Item[] public items;
    uint256 public nextId = 0;

    function create(string memory _name, uint256 _age) public {
        items.push(Item(_name, _age, nextId, true));
        nextId++;
    }

    function read() public view returns(Item[] memory) {
        return items;
    }

    function update(string memory _name, uint256 _age, uint256 _id) public {
        uint256 index = find(_id);
        items[index].name = _name;
        items[index].age = _age;
    }

    function deleteItem(uint256 _id) public {
        uint256 index = find(_id);
        items[index] = items[items.length - 1];
        items.pop();
    }

    function find(uint256 _id) internal view returns(uint256) {
        for (uint256 i = 0; i < items.length; i++) {
            if (items[i].id == _id) {
                return i;
            }
        }
        revert("Item does not exist");
    }
}
