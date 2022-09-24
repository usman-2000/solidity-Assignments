
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Digital_Wills{

    struct Asset{
        string assetName;
        string ownerName;
    }

    address owner;

    constructor(){
        owner = msg.sender;
    }

    mapping(string => address) public checkOwner;


    struct TransferAssets{
        string assetName;
        address transferFrom;
        address transferTo;
    }

    
    string[] assetList;

    Asset[] asset;

    TransferAssets[] transferList;

    modifier onlyOwner{
        require(owner == msg.sender, "You're Not An Owner");
        _;
    }

    function createAssets(string memory _assetName, string memory _ownerName) onlyOwner public {
        asset.push(Asset(_assetName, _ownerName));
        assetList.push(_assetName);
        checkOwner[_assetName] = msg.sender;
    }

    function transferAsset(string memory _assetName, address _transferTo) onlyOwner public {
        for (uint i=0; i< assetList.length; i++){
            require(keccak256(abi.encodePacked(_assetName)) == keccak256(abi.encodePacked(assetList[i])), "Asset Doesn't Exist...");
        }
        transferList.push(TransferAssets(_assetName, msg.sender, _transferTo));
        checkOwner[_assetName] = _transferTo;
    }
}
