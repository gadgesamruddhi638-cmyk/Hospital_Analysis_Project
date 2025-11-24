# 🏥 Hospital Patient & Treatment Analysis

**Author:** gadgesamruddhi638@gmail.com\
**Project Type:** Data Analytics (Python + SQL + Power BI)

------------------------------------------------------------------------

## 📌 Overview

This project focuses on analyzing hospital patient data to uncover
insights about: - Patient recovery status\
- Hospital stay duration\
- Treatment effectiveness\
- Seasonal admission spikes\
- Department and doctor workload

The project uses **Python (Pandas + Matplotlib)** for analysis, **SQL**
for database-level queries, and **Power BI** for dashboards.

------------------------------------------------------------------------

## 📂 Dataset Description

The dataset includes the following columns:

  Column Name      Description
  ---------------- -------------------------------------
  Patient_ID       Unique ID for each patient
  Gender           Male/Female
  Disease          Diagnosed disease
  Treatment        Treatment given
  Admission_Date   Date of hospital admission
  Discharge_Date   Date of discharge
  lenth_of_Stay    Duration of hospital stay
  Wating_Time      Waiting time before treatment
  Readmission      Yes/No (used to calculate recovery)
  Doctor_Name      Treating doctor
  Department       Hospital department
  Charges          Treatment cost

------------------------------------------------------------------------

## 🧠 Project Tasks

### 🔷 **Pandas Tasks**

-   Load and clean dataset\
-   Create recovery column using readmission\
-   Average stay duration per disease\
-   Average stay duration per treatment\
-   Seasonal admissions analysis\
-   Patients with longest stay

------------------------------------------------------------------------

### 🔷 **SQL Tasks**

-   Busiest hospital department\
-   Patient stay ranking\
-   Monthly admission/discharge trend\
-   Doctor performance ranking\
-   Readmission rates\
-   Average treatment cost\
-   Waiting time analysis

------------------------------------------------------------------------

### 🔷 **Power BI Dashboards**

-   Patient recovery visualization\
-   Monthly admission trend line chart\
-   Department-wise treatment cost\
-   Doctor-wise KPIs\
-   Stay duration and recovery comparison\
-   Interactive slicers for doctor, department, gender

------------------------------------------------------------------------

## ▶️ How to Run

### **1. Install required libraries**

``` bash
pip install pandas matplotlib
```

### **2. Run Jupyter Notebook**

``` bash
jupyter notebook
```

### **3. Load Dataset**

``` python
import pandas as pd
df = pd.read_csv("patients_cleaned.csv")
```

------------------------------------------------------------------------

## 📊 Key Code Examples

### ✔ Recovery Status from Readmission

``` python
df["Recovery"] = df["Readmission"].apply(lambda x: "Recovered" if x=="No" else "Not Recovered")
```

### ✔ Average Stay Duration per Disease

``` python
df.groupby("Disease")["lenth_of_Stay"].mean()
```

### ✔ Seasonal Admission Trend

``` python
df["Admission_Date"] = pd.to_datetime(df["Admission_Date"])
df["Month"] = df["Admission_Date"].dt.month
df["Month"].value_counts().plot(kind="line")
```

------------------------------------------------------------------------

## 📈 Insights

-   Readmission = No → High recovery percentage\
-   Some diseases correlate with longer stay duration\
-   Admissions spike during monsoon season\
-   Certain doctors and departments handle the most workload

------------------------------------------------------------------------

## 📜 License

This project is for educational, analytical, and portfolio purposes.

------------------------------------------------------------------------

## 📧 Contact

**Email:** gadgesamruddhi638@gmail.com
