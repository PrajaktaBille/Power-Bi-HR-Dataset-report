create database Hiring_db;
use Hiring_db;
create table hiring_data(
hiring_id int primary key,
hiring_date date,
joining_date date,
hiring_mode varchar(50),
employee_id varchar(50),
store_office_id varchar(50),
ctc numeric(10,2),
interviews int,
relocation_cost int,
hiring_cost numeric(10,2));


BULK INSERT hiring_data
FROM 'C:\Users\dell\Downloads\New Edu\Hiring Data after2023.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, -- Assuming the first row is a header row
    CODEPAGE = '65001', -- Assuming UTF-8 encoding
    MAX_ERRORS = 100, 
    ERRORFILE = 'C:\temp\hiring_data_errors.txt'
);
-- View the data
SELECT * FROM hiring_data;


