# 📊 Telecom customer-Churn-Analysis

## 🔍 Overview
    This project aims to analyze customer churn in a telecom company using real-world data. The goal is to identify key patterns, visualize trends, 

    and provide actionable insights to reduce churn and improve customer retention.

## 📁 Dataset Used
    Source: Sample Superstore Dataset(Available via Kaggle)

    Data Attributes: customerID, Gender, SeniorCitizen, Partner, Dependents, Tenure, PhoneService, MultipleLines, InternetService,
    
    PaymentMethod, MonthlyCharges, TotalCharges, Churn, churn_count

## 📷 Dataset Overview

<img width="1125" height="621" alt="Screenshot 2025-07-18 103615" src="https://github.com/user-attachments/assets/e6afc210-a647-4c2f-99af-66488548946c" />

## 🎯 Objectives
    Understand the key drivers of customer churn.
    
    Identify high-risk customer segments based on services, contract types, and payment methods.
    
    Visualize the churn rate and churn count using Power BI for clear storytelling.
    
    Recommend strategies for customer retention based on findings.
    
## 📊 Key Visualizations

### Total Customer

<img width="328" height="132" alt="Screenshot 2025-07-18 105155" src="https://github.com/user-attachments/assets/019e0666-6787-471f-b27a-80aa5aad5eb3" />

### Churn Count

<img width="227" height="132" alt="Screenshot 2025-07-18 105222" src="https://github.com/user-attachments/assets/4350ba92-a134-46f1-a4e4-6d30a247c350" />

### Churn Rate

<img width="207" height="133" alt="Screenshot 2025-07-18 105237" src="https://github.com/user-attachments/assets/21d98be7-66d6-4e55-adbd-2a949fcb6450" />

### Churn as per Male

<img width="340" height="129" alt="Screenshot 2025-07-18 105246" src="https://github.com/user-attachments/assets/d6d80fbb-f843-48ae-8662-05e6f14ce9d6" />

### Churn as per Female

<img width="370" height="129" alt="Screenshot 2025-07-18 105255" src="https://github.com/user-attachments/assets/ba1f799e-d2d7-4d3e-a14e-e0ec19af27ac" />

#### Average charges

<img width="237" height="122" alt="Screenshot 2025-07-18 105310" src="https://github.com/user-attachments/assets/b7f58ba0-0505-4e5e-9a94-b4259cabcc59" />

### Churn count as per contract

<img width="766" height="552" alt="Screenshot 2025-07-18 105339" src="https://github.com/user-attachments/assets/c90dcab2-62c4-4d04-a264-e5defc6d8704" />

### Churn count as per payment

<img width="950" height="555" alt="Screenshot 2025-07-18 105354" src="https://github.com/user-attachments/assets/7bbb22d3-be46-408d-95cd-d73ce96f332c" />

### Churn count as per Internetservice

<img width="625" height="475" alt="Screenshot 2025-07-18 105406" src="https://github.com/user-attachments/assets/23853971-c507-44f1-9610-1997dea8b5d9" />

## 🛠️ Data Transformation using pandas library in python

### 🟢 Step 1: Establishing a Connection to the Database
    Established a connection between MySQL and Python (Pandas) to extract customer churn data directly from the database.

    Used libraries like mysql-connector-python

    Executed SQL queries to fetch data into Python for further analysis.

#### 🟢 Step 2: convert data into DataFrame using pandas(Python)
    loaded the extracted data into python for pre processing.

#### 🟢 Step 3: Data understanding and quality check
    Explored the structure of the dataset.

    Checked column data types, null values, column quality, and column distribution to understand the data.

#### 🟢 Step 4: Data Cleaning & Transformation

    Removed null values and duplicate rows
    
    Renamed columns for clarity
    
    Changed data types (e.g., date, integer, float) appropriately 
    
    Reorganized into a clean tabular format for better analysis

#### 🟢 Step 5: Doing Explotary Data Analysis

    create KPis for EDA like total churn, total customer, churn rate etc. and 

    Generated insightful visualizations using Matplotlib

    Churn by Contract Type

    Churn by Payment Method
     
#### 🟢 Step 6: Export cleaned data for visualization

    After doing EDA the clean dataset export to an excel(.xlsx) file format using pandas and load into power BI for visualization.

## 🛠 Tools & Technologies
    Pyhton (pandas, numpy, matplotlib)

    MySQL

    Power Bi
    
    DAX Measures
    
## 📌 DAX Highlights

    Total_charge = sum(Sheet1[TotalCharges])

    Total_Monthly_charge = sum(Sheet1[MonthlyCharges])

    Total_senior_citizens = calculate(COUNTROWS(Sheet1),Sheet1[SeniorCitizen]=1)

    Avg_monthly_charge = AVERAGE(Sheet1[MonthlyCharges])

    Avg_Tenure = AVERAGE(Sheet1[Tenure])

    Avg_Total_charges = AVERAGE(Sheet1[TotalCharges])

    churn_rate = (sum(Sheet1[churn_count])/[customer_count])*100

    customer_count = DISTINCTCOUNT(Sheet1[customerID])
    
## 💡 Insights Uncovered
    Churn rate is higher among customers with month-to-month contracts.

    Customers using electronic checks have the highest churn.

    Users with tenure below 24 months are more likely to churn.

    Fiber optic users have a higher churn percentage compared to DSL.
    
 ## 📬 Contact / Credits
Author: Ajit Kumar Samal

LinkedIn: www.linkedin.com/in/ajitkumarsamal

GitHub: https://github.com/Ajit805-lab

Email: ajitkumarofficial79@gmail.com

      
  

    













