# 📦 Smart Logistics Tracking

A blockchain-powered IoT tracking system built for smart logistics.  
This project simulates the recording of sensor data (like temperature) from packages into a secure and tamper-proof Ethereum-based ledger using Solidity smart contracts.

---

## 🚀 Project Overview

This project uses:
- **IoT simulation data** (e.g., package temperature readings)
- **Solidity smart contracts** deployed on Ganache
- **Python scripts & Jupyter notebooks** to interact with the blockchain using Web3.py

It’s designed to track logistics data in real time and ensure transparency and data integrity using blockchain tech.

---

## 🗂️ Folder Structure
```bash
Smart-Logistics-Tracking/
├── contracts/         # Contains the Solidity smart contract
│   └── IoTDataStorage.sol
├── notebooks/         # Jupyter notebooks for testing, processing, and plotting
│   ├── M1_SmartTrackingLedger.ipynb
│   ├── M1_SmartTrackingLedger_Upload.ipynb
│   ├── M1_DataRetrievalAndCleaning.ipynb
│   └── M1_IOTLinePlot.ipynb
├── data/              # Simulated IoT data in CSV format
│   ├── smart_logistics_data.csv
│   └── cleaned_iot_data.csv
├── README.md
```


---

## 🔐 Smart Contract

The smart contract (`IoTDataStorage.sol`) includes:
- `storeData()` – to record a new entry (timestamp, device ID, data type, data value)
- `getTotalRecords()` – to fetch how many entries have been stored
- `getRecord(index)` – to retrieve a specific record by index

---

## 📓 Notebooks

| Notebook File | Description |
|---------------|-------------|
| `M1_SmartTrackingLedger.ipynb` | Tests the smart contract with one manual data record |
| `M1_SmartTrackingLedger_Upload.ipynb` | Uploads multiple records from CSV to the blockchain |
| `M1_DataRetrievalAndCleaning.ipynb` | Retrieves data from blockchain, cleans it, and saves it as CSV |
| `M1_IOTLinePlot.ipynb` | Visualises sensor trends over time with line and box plots |

---


## 📊 Weekly Progress

### ✅ Week 6: Data Cleaning & Preprocessing

- Retrieved IoT records from the smart contract on Ganache.
- Structured the data into a DataFrame using `pandas`.
- Converted timestamps to readable datetime format.
- Extracted and converted sensor values to numeric format.
- Saved cleaned data as `cleaned_iot_data.csv` inside the `/data` folder.

📁 Notebook: `notebooks/M1_DataRetrievalAndCleaning.ipynb`  
📄 Output: `data/cleaned_iot_data.csv`

---

### ✅ Week 7: Line Plot of IoT Sensor Readings Over Time

- Loaded cleaned sensor data from Week 6.
- Visualised sensor readings using `matplotlib` and `seaborn`.
- Created a full **time-series line plot** of sensor values over time.
- Added a **zoomed-in view** of the first 10 minutes to reveal early behavior.
- Included a **box plot** to show value distribution per sensor type.
- Sorted timestamps and applied styling for clarity.

📁 Notebook: `notebooks/M1_IOTLinePlot.ipynb`

#### 🧠 Key Insights:
- Most readings occurred within a short burst of time
- Initial drop suggests sensor warm-up or calibration
- Box plot reveals value variation across sensor types

---

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
  Karla Missy Castillo
---

## 📌 Notes

> This is a simulation for educational purposes and not yet optimized for production.

---

