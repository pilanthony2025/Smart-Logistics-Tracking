// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IoTDataStorage {

    enum DataType { Temperature, Humidity, Pressure, Light }

    struct DataRecord {
        uint256 timestamp;
        string deviceId;
        DataType dataType;
        string dataValue;
    }

    address public owner;
    uint256 public constant MAX_ENTRIES = 1000;
    DataRecord[] public dataRecords;

    event DataStored(
        uint256 timestamp,
        string deviceId,
        DataType dataType,
        string dataValue
    );

    constructor() {
        owner = msg.sender;
    }

    function storeData(string memory _deviceId, DataType _dataType, string memory _dataValue) public {
        require(dataRecords.length < MAX_ENTRIES, "Max entries reached");

        DataRecord memory newRecord = DataRecord({
            timestamp: block.timestamp,
            deviceId: _deviceId,
            dataType: _dataType,
            dataValue: _dataValue
        });

        dataRecords.push(newRecord);
        emit DataStored(block.timestamp, _deviceId, _dataType, _dataValue);
    }

    function getTotalRecords() public view returns (uint256) {
        return dataRecords.length;
    }

    function getRecord(uint256 index) public view returns (
        uint256,
        string memory,
        DataType,
        string memory
    ) {
        require(index < dataRecords.length, "Invalid index");
        DataRecord memory record = dataRecords[index];
        return (record.timestamp, record.deviceId, record.dataType, record.dataValue);
    }
}
