# 📦 Smart Logistics Tracking

A blockchain-powered IoT tracking system built for smart logistics.  
This project simulates the recording of sensor data (like temperature) from packages into a secure and tamper-proof Ethereum-based ledger using Solidity smart contracts.

---

## 🚀 Project Overview

This project uses:
- 📡 **IoT simulation data** (e.g., package temperature readings)
- ⛓️ **Solidity smart contracts** deployed on Ganache
- 🐍 **Python scripts & Jupyter notebooks** to interact with the blockchain using Web3.py

It’s designed to track logistics data in real time and ensure transparency and data integrity using blockchain tech.

---

## 🗂️ Folder Structure
├── contracts/ # Contains the Solidity smart contract
│ └── IoTDataStorage.sol
├── notebooks/ # Jupyter notebooks for testing and uploading data
│ ├── M1_SmartTrackingLedger.ipynb
│ └── M1_SmartTrackingLedger_Upload.ipynb
├── data/ # Simulated IoT data in CSV format
│ └── smart_logistics_data.csv
├── README.md # You're reading it!


---

## 🔐 Smart Contract

The smart contract (`IoTDataStorage.sol`) includes:
- `storeData()` – to record a new entry (timestamp, device ID, data type, data value)
- `getTotalRecords()` – to fetch how many entries have been stored
- `getRecord(index)` – to retrieve a specific record by index

---

## 📓 Notebooks

- `M1_SmartTrackingLedger.ipynb`  
  → Tests the contract manually with one data record

- `M1_SmartTrackingLedger_Upload.ipynb`  
  → Reads a CSV file and uploads multiple IoT records to the blockchain

---

## 🧪 How to Run

1. Start **Ganache** locally at `http://127.0.0.1:7545`
2. Deploy the contract via **Remix** and copy the contract address
3. Update the address in the notebooks or Python script
4. Run the notebooks using **Jupyter Lab** or **VSCode**

---

## 🤝 Contributors

- Trisha Mei Atienza
- Roberto Gabrido
- Phil Anthony Bebeloni

---

## 📌 Notes

> This is a simulation for educational purposes and not yet optimized for production.

---

