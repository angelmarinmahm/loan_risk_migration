create database riesgo_credito;

create external table if not exists loans_data(
  age INT,
  income DOUBLE,
  loan_amount DOUBLE,
  credit_score INT,
  years_experience INT,
  gender STRING,
  education STRING,
  city STRING,
  employment_type STRING,
  loan_approved INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION 's3://migracion-sas-aws-credit-risk/migracion_2026/'
TBLPROPERTIES ('skip.header.line.count'='1');

select * from loans_data limit 10;
