-- Insert data into parent tables first
INSERT INTO BRANCH (LocationID, Branch_Name, Branch_Location) VALUES (1, 'Branch
1', 'Location 1');
INSERT INTO BRANCH (LocationID, Branch_Name, Branch_Location) VALUES (2, 'Branch
2', 'Location 2');
INSERT INTO BRANCH (LocationID, Branch_Name, Branch_Location) VALUES (3, 'Branch
3', 'Location 3');
INSERT INTO BRANCH (LocationID, Branch_Name, Branch_Location) VALUES (4, 'Branch
4', 'Location 4');
INSERT INTO BRANCH (LocationID, Branch_Name, Branch_Location) VALUES (5, 'Branch
5', 'Location 5');
INSERT INTO CAR_CLASS (ClassID, ClassName, ClassDesc) VALUES (1, 'Class 1',
'Description 1');
INSERT INTO CAR_CLASS (ClassID, ClassName, ClassDesc) VALUES (2, 'Class 2',
'Description 2');
INSERT INTO CAR_CLASS (ClassID, ClassName, ClassDesc) VALUES (3, 'Class 3',
'Description 3');
INSERT INTO CAR_CLASS (ClassID, ClassName, ClassDesc) VALUES (4, 'Class 4',
'Description 4');
INSERT INTO CAR_CLASS (ClassID, ClassName, ClassDesc) VALUES (5, 'Class 5',
'Description 5');
INSERT INTO CAR_MODEL (ModelID, ModelName, Manufacturer) VALUES (1, 'Model 1',
'Manufacturer 1');
INSERT INTO CAR_MODEL (ModelID, ModelName, Manufacturer) VALUES (2, 'Model 2',
'Manufacturer 2');
INSERT INTO CAR_MODEL (ModelID, ModelName, Manufacturer) VALUES (3, 'Model 3',
'Manufacturer 3');
INSERT INTO CAR_MODEL (ModelID, ModelName, Manufacturer) VALUES (4, 'Model 4',
'Manufacturer 4');
INSERT INTO CAR_MODEL (ModelID, ModelName, Manufacturer) VALUES (5, 'Model 5',
'Manufacturer 5');
INSERT INTO CAR (VIN, ModelID, ClassID, Status) VALUES ('VIN123', 1, 1, 'Available');
INSERT INTO CAR (VIN, ModelID, ClassID, Status) VALUES ('VIN456', 2, 2, 'Available');
INSERT INTO CAR (VIN, ModelID, ClassID, Status) VALUES ('VIN789', 3, 3, 'Available');
INSERT INTO CAR (VIN, ModelID, ClassID, Status) VALUES ('VIN101', 4, 4, 'Available');
INSERT INTO CAR (VIN, ModelID, ClassID, Status) VALUES ('VIN202', 5, 5, 'Available');
-- Insert data into other tables
INSERT INTO CUSTOMER (CustomerID, Cust_Name, Cust_Address, License_No,
Date_of_Birth) VALUES (1, 'John Doe', '123 Apple St', 'L1234567', TO_DATE('1985-01-01',
'YYYY-MM-DD'));
INSERT INTO CUSTOMER (CustomerID, Cust_Name, Cust_Address, License_No,
Date_of_Birth) VALUES (2, 'Jane Smith', '456 Banana St', 'L2345678', TO_DATE('1990-02-
02', 'YYYY-MM-DD'));
INSERT INTO CUSTOMER (CustomerID, Cust_Name, Cust_Address, License_No,
Date_of_Birth) VALUES (3, 'Bob Johnson', '789 Cherry St', 'L3456789', TO_DATE('1975-03-
03', 'YYYY-MM-DD'));
INSERT INTO CUSTOMER (CustomerID, Cust_Name, Cust_Address, License_No,
Date_of_Birth) VALUES (4, 'Alice Williams', '101 Date St', 'L4567890', TO_DATE('1980-04-
04', 'YYYY-MM-DD'));
INSERT INTO CUSTOMER (CustomerID, Cust_Name, Cust_Address, License_No,
Date_of_Birth) VALUES (5, 'Tom Brown', '202 Fig St', 'L5678901', TO_DATE('1995-05-05',
'YYYY-MM-DD'));
INSERT INTO CREDITCARD (CC_No, CC_Type, CC_Name, CC_Exp_Date) VALUES
('4111111111111111', 'Visa', 'John Doe', TO_DATE('2025-01-01', 'YYYY-MM-DD'));
INSERT INTO CREDITCARD (CC_No, CC_Type, CC_Name, CC_Exp_Date) VALUES
('4222222222222222', 'MasterCard', 'Jane Smith', TO_DATE('2026-02-02', 'YYYY-MM-DD'));
INSERT INTO CREDITCARD (CC_No, CC_Type, CC_Name, CC_Exp_Date) VALUES
('4333333333333333', 'Amex', 'Bob Johnson', TO_DATE('2027-03-03', 'YYYY-MM-DD'));
INSERT INTO CREDITCARD (CC_No, CC_Type, CC_Name, CC_Exp_Date) VALUES
('4444444444444444', 'Discover', 'Alice Williams', TO_DATE('2028-04-04', 'YYYY-MM-DD'));
INSERT INTO CREDITCARD (CC_No, CC_Type, CC_Name, CC_Exp_Date) VALUES
('4555555555555555', 'Visa', 'Tom Brown', TO_DATE('2029-05-05', 'YYYY-MM-DD'));
-- Insert data into dependent tables
INSERT INTO RESERVATION (Reservation_ID, Customer_ID, Branch_ID, ClassID,
Pick_up_datetime, Drop_off_datetime, CC_No) VALUES (1, 1, 1, 1, TO_DATE('2023-01-01
10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-07 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), '4111111111111111');
INSERT INTO RESERVATION (Reservation_ID, Customer_ID, Branch_ID, ClassID,
Pick_up_datetime, Drop_off_datetime, CC_No) VALUES (2, 2, 2, 2, TO_DATE('2023-02-01
10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-02-07 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), '4222222222222222');
INSERT INTO RESERVATION (Reservation_ID, Customer_ID, Branch_ID, ClassID,
Pick_up_datetime, Drop_off_datetime, CC_No) VALUES (3, 3, 3, 3, TO_DATE('2023-03-01
10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-03-07 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), '4333333333333333');
INSERT INTO RESERVATION (Reservation_ID, Customer_ID, Branch_ID, ClassID,
Pick_up_datetime, Drop_off_datetime, CC_No) VALUES (4, 4, 4, 4, TO_DATE('2023-04-01
10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-04-07 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), '4444444444444444');
INSERT INTO RESERVATION (Reservation_ID, Customer_ID, Branch_ID, ClassID,
Pick_up_datetime, Drop_off_datetime, CC_No) VALUES (5, 5, 5, 5, TO_DATE('2023-05-01
10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-05-07 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), '4555555555555555');
INSERT INTO RENTALAGREEMENT (ContractNumber, Reservation_ID, VIN, StartTime,
StartOdometerReading, StartFuelLevel, EndTime, EndOdometerReading, EndFuelLevel,
DropOffTime) VALUES (1, 1, 'VIN123', TO_DATE('2023-01-01 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), 10000, 100.0, TO_DATE('2023-01-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
10500, 50.0, TO_DATE('2023-01-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO RENTALAGREEMENT (ContractNumber, Reservation_ID, VIN, StartTime,
StartOdometerReading, StartFuelLevel, EndTime, EndOdometerReading, EndFuelLevel,
DropOffTime) VALUES (2, 2, 'VIN456', TO_DATE('2023-02-01 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), 20000, 100.0, TO_DATE('2023-02-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
20500, 50.0, TO_DATE('2023-02-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO RENTALAGREEMENT (ContractNumber, Reservation_ID, VIN, StartTime,
StartOdometerReading, StartFuelLevel, EndTime, EndOdometerReading, EndFuelLevel,
DropOffTime) VALUES (3, 3, 'VIN789', TO_DATE('2023-03-01 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), 30000, 100.0, TO_DATE('2023-03-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
30500, 50.0, TO_DATE('2023-03-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO RENTALAGREEMENT (ContractNumber, Reservation_ID, VIN, StartTime,
StartOdometerReading, StartFuelLevel, EndTime, EndOdometerReading, EndFuelLevel,
DropOffTime) VALUES (4, 4, 'VIN101', TO_DATE('2023-04-01 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), 40000, 100.0, TO_DATE('2023-04-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
40500, 50.0, TO_DATE('2023-04-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO RENTALAGREEMENT (ContractNumber, Reservation_ID, VIN, StartTime,
StartOdometerReading, StartFuelLevel, EndTime, EndOdometerReading, EndFuelLevel,
DropOffTime) VALUES (5, 5, 'VIN202', TO_DATE('2023-05-01 10:00:00', 'YYYY-MM-DD
HH24:MI:SS'), 50000, 100.0, TO_DATE('2023-05-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
50500, 50.0, TO_DATE('2023-05-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO BILL (BillID, RentalAgreementID, TotalAmount, Results_In) VALUES (1, 1,
1000.00, 'Paid');
INSERT INTO BILL (BillID, RentalAgreementID, TotalAmount, Results_In) VALUES (2, 2,
1100.00, 'Paid');
INSERT INTO BILL (BillID, RentalAgreementID, TotalAmount, Results_In) VALUES (3, 3,
1200.00, 'Paid');
INSERT INTO BILL (BillID, RentalAgreementID, TotalAmount, Results_In) VALUES (4, 4,
1300.00, 'Paid');
INSERT INTO BILL (BillID, RentalAgreementID, TotalAmount, Results_In) VALUES (5, 5,
1400.00, 'Paid');
SELECT * FROM BRANCH;
SELECT * FROM CAR_CLASS;
SELECT * FROM CAR_MODEL;
SELECT * FROM CAR;
SELECT * FROM CUSTOMER;
SELECT * FROM CREDITCARD;
SELECT * FROM RESERVATION;
SELECT * FROM RENTALAGREEMENT;
SELECT * FROM BILL;