Create database RetailSalesData;
Use RetailSalesData;

Create table Sales_Data_Transaction(
customer_id varchar(255) ,
trans_date varchar(100),
tran_amount int
);

Create table Sales_Data_Response(
customer_id varchar(255) ,
response int
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transaction
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
ignore 1 rows;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Response.csv'
INTO TABLE Sales_Data_Response
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
ignore 1 rows;

Explain select * from Sales_Data_Transaction where customer_id='CS5292';

Create Index idx_id on Sales_Data_Transaction(Customer_id);

Explain select * from Sales_Data_Transaction where customer_id='CS5292';