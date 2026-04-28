# Data Modernization Pipeline: Legacy to AWS Migration 🚀

## 📋 Overview
This project demonstrates a professional end-to-end data pipeline designed to migrate financial legacy data (simulating SAS/local environments) to a modern cloud architecture on **AWS**. It focuses on data integrity, automated ETL processes, and cloud-native analytics.

## 🛠️ Tech Stack
*   **Language:** Python 3.x
*   **Data Libraries:** Pandas (Data Cleaning & Transformation)
*   **Cloud Provider (AWS):**
    *   **S3:** Data Lake storage for raw and processed files.
    *   **Athena:** Serverless SQL engine for analytical queries.
    *   **Boto3:** AWS SDK for Python to automate infrastructure interactions.
    *   **IAM:** Role-based access control and security.

## ⚙️ Data Pipeline Workflow
1.  **Ingestion:** Extraction of 5,000+ financial records from local legacy formats.
2.  **Transformation (Python/Pandas):**
    *   Handled inconsistent data (removed negative values in `income` and `loan_amount`).
    *   Statistical imputation of missing values using the **median** for numerical stability.
    *   Categorical data standardization (mapping nulls to "Unknown").
    *   Column normalization for SQL compatibility.
3.  **Cloud Migration:** Automated upload to **Amazon S3** partitioned storage.
4.  **Analytics Layer:** Schema definition and table creation in **Amazon Athena** for high-performance SQL querying.

## 📊 Business Insights (SQL)
The pipeline enables strategic analysis such as:
*   **Approval Rates:** Calculating loan approval percentages by city.
*   **Risk Assessment:** Identifying high-risk segments based on Credit Scores and Debt ratios.
*   **Customer Profiling:** Statistical summaries of approved vs. rejected applicants.

## 🚀 How to Run
1. Clone the repository.
2. Configure AWS credentials locally via `aws configure`.
3. Install the required libraries:
   ```bash
   pip install pandas boto3 notebook
   ```
4. Open the Jupyter Notebook:
   ```bash
   jupyter notebook proyecto1.ipynb
   ```
5. Run the cells sequentially to see the data cleaning process and AWS migration.

You can view the full execution and results directly on GitHub's notebook preview.
---
*Developed by an Engineering & Programming professional focused on Data Excellence.*
