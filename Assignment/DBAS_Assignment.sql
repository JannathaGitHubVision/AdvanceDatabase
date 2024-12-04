--QUESTION 2
--CREATE TABLE Customers_Delivery
CREATE TABLE CustomersDelivery (
    CustomerId NUMBER PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(12) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

--CREATE TABLE Staff_Delivery
CREATE TABLE StaffDelivery (
    StaffId NUMBER PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL
);


--CREATE TABLE Billing
CREATE TABLE Billing (
    BillId NUMBER PRIMARY KEY NOT NULL,
    CustomerId NUMBER NOT NULL,
    StaffId INT NOT NULL,
    BillDate VARCHAR(20) NOT NULL,
    
    FOREIGN KEY(CustomerId) REFERENCES CustomersDelivery(CustomerId),
    FOREIGN KEY(StaffId) REFERENCES StaffDelivery(StaffId)
);


--CREATE TABLE DeliveryItems
CREATE TABLE DeliveryItems (
    DeliveryItemId NUMBER PRIMARY KEY NOT NULL,
    Description VARCHAR(100) NOT NULL,
    StaffId NUMBER NOT NULL,
    FOREIGN KEY (StaffId) REFERENCES StaffDelivery(StaffId)
);


-- Create the table
CREATE TABLE Drivers (
    Driver_ID NUMBER(5) PRIMARY KEY NOT NULL,
    First_Name VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL,
    Driver_Code VARCHAR(5) NOT NULL,
    Phone_Num VARCHAR(15) NOT NULL,
    Address VARCHAR(100) NOT NULL
);

--CREATE TABLE Vehicle
CREATE TABLE Vehicle (
    VinNumber VARCHAR(20) PRIMARY KEY NOT NULL,
    VehicleType VARCHAR(50) NOT NULL,
    Mileage NUMBER NOT NULL,
    Colour VARCHAR(20) NOT NULL,
    Manufacturer VARCHAR(50) NOT NULL
);


--CREATE TABLE DriverDelivery
CREATE TABLE DriverDelivery (
    DriverDeliveryId NUMBER PRIMARY KEY NOT NULL,
    VinNumber VARCHAR(20) NOT NULL,
    Driver_ID NUMBER NOT NULL,
    DeliveryItemId NUMBER NOT NULL,
    
     FOREIGN KEY (VinNumber) REFERENCES Vehicle(VinNumber),
    FOREIGN KEY (Driver_ID) REFERENCES Drivers(Driver_ID),
    FOREIGN KEY (DeliveryItemId) REFERENCES DeliveryItems(DeliveryItemId)
);





--INSERT VALUES FOR CustomersDelivery
INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11011,'Bob','Smith','18 Water rd','0877277521','bobs@isat.com');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11012,'Sam','Hendricks','22 Water rd','0863257857','shen@mcom.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11013,'Larry','Clark','101 Summer lane','0834567891','larc@mcom.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11014,'Jeff','Jones','55 Mountain way','0612547895','jj@isat.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11015,'Andre','Kerk','5 Main rd','0827238521','akerk@mcal.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11016,'Wayne','Smith','13 Water rd','0877277522','ws@isat.com');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11017,'John','Hendricks','29 Water rd','0863257851','jhen@mcom.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11018,'Sally','Clark','111 Summer lane','0834567892','sallyc@mcom.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11019,'Bridget', 'Bitterhour', '125 Mountain way', '0612547896', 'bb@isat.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES (11111,'Nicole', 'Kerk', '175 Main rd', '0827238529', 'nk@mcal.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES(11112,'Catherine', 'Smith', '19 Water rd', '0877277523', 'cath@isat.com');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES(11113,'Mel', 'Hendricks', '5 Water rd', '0863257852', 'melh@mcom.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES(11114,'Lucy', 'Du Plessis', '221 Summer lane', '0834567892', 'ldup@mcom.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES(11116,'Josh', 'Maverick', '155 Mountain way', '0612547897', 'joshm@isat.co.za');

INSERT INTO CustomersDelivery (CustomerId, FirstName, Surname, Address, PhoneNumber, Email) 
VALUES(11117,'Stuart', 'Jones', '35 Main rd', '0827238521', 'sjones@mcal.co.za');


--insert statments for staffDelivery
INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email)
VALUES (51011,'Sally','Du Toit','Logistics','0825698547','18 Main rd','sdut@isat.com');

INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email) 
VALUES (51012,'Mark','Wright','CRM','0836984178','12 Cape Way','mwright@isat.com');

INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email) 
VALUES (51013,'Harry','Sheen','Logistics','0725648965','15 Water Street','hsheen@isat.com');

INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email) 
VALUES (51014,'Jabu','Xolani','Logistics','0823116598','18 White Lane','jxo@isat.com');

INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email) 
VALUES (51015,'Roberto','Henry','Packaging','0783521451','55 Cape Street','rhenry@isat.com');

INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email) 
VALUES(51016,'Pat', 'Durant', 'Logistics', '0825698542', '1 Main rd', 'pd@isat.com');

INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email) 
VALUES(51017,'Steve', 'Maritz', 'CRM', '0836984173', '2 Cape Way', 'sm@isat.com');

INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email) 
VALUES(51018,'Maxwell', 'Dube', 'Logistics', '0725648964', '5 Water Street', 'max@isat.com');

INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email) 
VALUES(51019,'Shane', 'Mane', 'Logistics', '0823116595', '8 White Lane', 'smane@isat.com');

INSERT INTO StaffDelivery (StaffId, FirstName, Surname, Position, PhoneNumber, Address, Email) 
VALUES(51111,'Bob', 'Truth', 'Packaging', '0783521456', '35 Cape Street', 'btruth@isat.com');


--INSERT VALUES FOR Billing table
INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (800,11011,51011,'06-Sep-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (801,11012,51013,'07-Sep-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (800,11011,51011,'06-Sep-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (801,11012,51013,'07-Sep-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (802,11014,51015,'10-Nov-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (803,11015,51012,'09-Dec-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (804,11013,51014,'09-Dec-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (805,11111,51011,'06-Sep-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (806,11012,51013,'07-Sep-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (807,11014,51015,'10-Nov-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (808,11015,51012,'09-Dec-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (809,11113,51018,'09-Dec-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (810,11011,51011,'06-Sep-22');

INSERT INTO Billing (BillId, CustomerId, StaffId, BillDate) 
VALUES (811,11012,51013,'07-Sep-22');

INSERT INTO Billing (BillId,CustomerId ,StaffID ,BillDate )
VALUES(812,11014,51016,'10-Nov-22');

INSERT INTO Billing (BillId,CustomerID ,StaffID ,BillDate ) 
VALUES(813,11117,51012,'09-Dec-22');

INSERT INTO Billing (BillId,CustomerID ,StaffID ,BillDate ) 
VALUES(814, 11013,51014,'09-Dec-22');

INSERT INTO Billing (BillId,CustomerID ,StaffID ,BillDate ) 
VALUES(815,11012,51111,'06-Sep-22');

INSERT INTO Billing (BillId,CustomerID ,StaffID ,BillDate ) 
VALUES(816,11012,51019,'07-Sep-22');

INSERT INTO Billing (BillId,CustomerID ,StaffID ,BillDate ) 
VALUES(817,'11014','51015','10-Nov-22');

INSERT INTO Billing (BillId,CustomerID ,StaffID ,BillDate ) 
VALUES(818,11112,51012,'09-Dec-22');

INSERT INTO Billing (BillId,CustomerID ,StaffID ,BillDate ) 
VALUES(819,11013,51014,'09-Dec-22');

INSERT INTO Billing (BillId,CustomerID ,StaffID ,BillDate ) 
VALUES(820,11116,51019,'09-Dec-22');


--insert staements for deliveryitems
INSERT INTO DeliveryItems (DeliveryItemId, Description, StaffId) 
VALUES(71011,'House relocation',51011);

INSERT INTO DeliveryItems (DeliveryItemId, Description, StaffId) 
VALUES (71012,'Delivery of specialized consignments',51017);

INSERT INTO DeliveryItems (DeliveryItemId, Description, StaffId) 
VALUES (71013,'Delivery of specialized consignments',51015);

INSERT INTO DeliveryItems (DeliveryItemId, Description, StaffId) 
VALUES (71014,'Office relocation',51012);

INSERT INTO DeliveryItems (DeliveryItemId, Description, StaffId) 
VALUES (71015,'Delivery of specialized consignments',51014);



-- INSERT VALUES FOR Drivers table
INSERT INTO Drivers (Driver_ID, First_Name, Surname, Driver_Code, Phone_Num, Address)
VALUES (81011, 'Buthelezi', 'Marshall', 'C1', '0725698547', '18 Leopard creek');

INSERT INTO Drivers (Driver_ID, First_Name, Surname, Driver_Code, Phone_Num, Address)
VALUES (81012, 'Tina', 'Mtati', 'C', '0636984178', '12 Cape rd');

INSERT INTO Drivers (Driver_ID, First_Name, Surname, Driver_Code, Phone_Num, Address)
VALUES (81013, 'Jono', 'Mvuyisi', 'EC1', '0725648965', '15 Circle lane');

INSERT INTO Drivers (Driver_ID, First_Name, Surname, Driver_Code, Phone_Num, Address)
VALUES (81014, 'Richard', 'Smith', 'C1', '0623116598', '18 Beach rd');

INSERT INTO Drivers (Driver_ID, First_Name, Surname, Driver_Code, Phone_Num, Address)
VALUES (81015, 'Brett', 'Smith', 'EB', '0883521457', '55 Summer lane');


-- INSERT VALUES FOR Vechile table
INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA55858541','Cutaway van chassis',115352,'RED','MAN');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA51858542','Flatbed truck',315856,'BLUE','ISUZU');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA35858543','Medium Standard Truck',789587,'SILVER','MAN');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA15851545','Flatbed truck',555050,'WHITE','TATA');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA35868540','Cutaway van chassis',79058,'WHITE','ISUZU');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA65858541','Cutaway van chassis',215352,'RED','MAN');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA61858542','Flatbed truck',215856,'BLUE','ISUZU');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA65858543','Medium Standard Truck',889587,'SILVER','MERC');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA65851545','Flatbed truck',155050,'WHITE','MAN');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA65868540','Cutaway van chassis',19058,'WHITE','ISUZU');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA75858541','Cutaway van chassis',315352,'RED','MAN');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA71858542','Flatbed truck',115856,'BLUE','ISUZU');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA75858543','Medium Standard Truck',989587,'SILVER','MAN');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA17851545','Flatbed truck',755050,'WHITE','TATA');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA75868540','Cutaway van chassis',29058,'WHITE','ISUZU');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA85858541','Cutaway van chassis',515352,'RED','MERC');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA81858542','Flatbed truck',715856,'BLUE','ISUZU');

INSERT INTO Vehicle (VinNumber, VehicleType, Mileage, Colour, Manufacturer) 
VALUES ('1ZA85858543','Medium Standard Truck',789587,'SILVER','MAN');

INSERT INTO Vehicle (VinNumber,VehicleType,Mileage ,Colour ,Manufacturer ) 
VALUES ('1ZA85851545', 'Flatbed truck', '955050', 'WHITE', 'TATA');

INSERT INTO Vehicle (VinNumber,VehicleType,Mileage ,Colour ,Manufacturer ) 
VALUES ('1ZA85868540', 'Cutaway van chassis', '39058', 'WHITE', 'MERC');

-- INSERT VALUES FOR DriverDelivery table
INSERT INTO DriverDelivery (DriverDeliveryId, VinNumber, Driver_ID, DeliveryItemId) 
VALUES (91011,'1ZA55858541',81011,71011);

INSERT INTO DriverDelivery (DriverDeliveryId, VinNumber, Driver_ID, DeliveryItemId) 
VALUES (91012,'1ZA35858543',81012,71013);

INSERT INTO DriverDelivery (DriverDeliveryId, VinNumber, Driver_ID, DeliveryItemId) 
VALUES (91013,'1ZA17851545',81011,71015);

INSERT INTO DriverDelivery (DriverDeliveryId, VinNumber, Driver_ID, DeliveryItemId) 
VALUES (91014,'1ZA35868540',81013,71015);

INSERT INTO DriverDelivery (DriverDeliveryId, VinNumber, Driver_ID, DeliveryItemId) 
VALUES (91015,'1ZA15851545',81014,71012);


Select * from CustomersDelivery;
Select * from StaffDelivery;
Select * from Billing;
Select * from DeliveryItems;
Select * from Vehicle;
Select * from Drivers;
Select * from DriverDelivery;


--QUESTION 3 PLEASE
CREATE USER C##Tshepo IDENTIFIED BY tmphoabc2023;
CREATE USER C##Mya IDENTIFIED BY mrobertabc2023;

GRANT SELECT ANY TABLE TO C##Tshepo;
GRANT INSERT ANY TABLE TO C##Mya

--QUESTION 4

SET SERVEROUTPUT ON;
DECLARE
--Local variables
    Driver_name Drivers.First_Name %TYPE;
    Driver_code Drivers.Driver_Code %TYPE;
    Vin_Number  Vehicle.VinNumber %TYPE;
    Mileage     Vehicle.Mileage %TYPE;
    
    CURSOR D_miles IS 
        SELECT 
        Drivers.First_Name, 
        Drivers.Surname,
        Drivers.Driver_Code,
        Vehicle.VinNumber , 
        Vehicle.Mileage

    FROM 
        Drivers 
    INNER JOIN 
        DriverDelivery ON  Drivers.Driver_ID = DriverDelivery.Driver_ID
    INNER JOIN 
        Vehicle ON Vehicle.VinNumber = DriverDelivery.VinNumber
    WHERE 
        Vehicle.Mileage < 80000
    ORDER BY 
        Vehicle.Mileage;

BEGIN 
    FOR eachVal in D_miles
        LOOP
        Driver_name := eachVal.First_Name || ', ' || eachVal.Surname;
        Driver_code := eachVal.Driver_Code;
        Vin_Number := eachVal.VinNumber;
        Mileage := eachVal.Mileage;
        
        dbms_output.put_line('---------------------------------------------');
        dbms_output.put_line('DRIVER : '|| Driver_name);
        dbms_output.put_line('CODE : '|| Driver_code);
        dbms_output.put_line('VIN NUMBER : ' || Vin_Number);
        dbms_output.put_line('MILEAGE : '|| Mileage);
        dbms_output.put_line('---------------------------------------------');
        END LOOP;
END;


--QUESTION 5
SET SERVEROUTPUT ON;
DECLARE
    driverID  StaffDelivery.StaffId %TYPE;
    Fname     StaffDelivery.FirstName %TYPE;
    surname   StaffDelivery.Surname  %TYPE;
    DelProced DeliveryItems.DeliveryItemId %TYPE;

    CURSOR DelVal IS
    SELECT * FROM( 
    SELECT
        StaffDelivery.StaffId,
        StaffDelivery.FirstName,
        StaffDelivery.Surname,
        COUNT(StaffDelivery.StaffId ) AS DeliveryCount

    FROM
        StaffDelivery
    INNER JOIN
        DeliveryItems ON  StaffDelivery.StaffId = DeliveryItems.StaffId
    INNER JOIN
        DriverDelivery ON DeliveryItems.DeliveryItemId = DriverDelivery.DeliveryItemId
    INNER JOIN
        Vehicle ON Vehicle.VinNumber = DriverDelivery.VinNumber
    GROUP BY
        StaffDelivery.StaffId,
        StaffDelivery.FirstName,
        StaffDelivery.Surname
    ORDER BY
        DeliveryCount DESC)
        WHERE ROWNUM=1 ;


BEGIN
    FOR  eachDelVal IN DelVal
        LOOP
            driverID := eachDelVal.StaffId;
            Fname := eachDelVal.FirstName;
            surname := eachDelVal.Surname;
            DelProced := eachDelVal.DeliveryCount;

            dbms_output.put_line('---------------------------------------------');
            dbms_output.put_line('DRIVER ID : '|| driverID );
            dbms_output.put_line('FIRST NAME : '|| Fname);
            dbms_output.put_line('SURNAME : ' || surname);
            dbms_output.put_line('DELIVERIES PROCESSED : '|| DelProced);
            dbms_output.put_line('---------------------------------------------');
        END LOOP;
END;

    
--Question 5.3
CREATE OR REPLACE VIEW mostdeliveries AS
SELECT  
        -- Selecting the staff ID
        StaffDelivery.StaffId,
        
        -- Selecting the first name of the staff
        StaffDelivery.FirstName,
        
        -- Selecting the surname of the staff
        StaffDelivery.Surname,
        
        -- Counting the number of deliveries made by each staff member
        COUNT(DeliveryItems.StaffId) AS DeliveryCount
FROM
        -- Specifying the 'StaffDelivery' table as the source of data
        StaffDelivery
    -- Joining 'StaffDelivery' with 'DeliveryItems' on 'StaffId'
    INNER JOIN DeliveryItems ON  StaffDelivery.StaffId = DeliveryItems.StaffId
    --Joining 'DriverDelivery' with 'DeliveryItems' on 'DeliveryItemsID'
    INNER JOIN DriverDelivery ON DeliveryItems.DeliveryItemId = DriverDelivery.DeliveryItemId
    --Joining 'Vehicle' with 'DriverDelivery' on 'VinNumber'
    INNER JOIN Vehicle ON Vehicle.VinNumber = DriverDelivery.VinNumber    
        
-- Grouping the result by staff ID, first name, and surname
GROUP BY
        StaffDelivery.StaffId,
        StaffDelivery.FirstName,
        StaffDelivery.Surname
        
-- Ordering the result by the count of deliveries in descending order
ORDER BY
    DeliveryCount DESC;

   

-- Selecting all records from the 'mostdeliveries' view to display the result
SELECT *
FROM (
    SELECT *
    FROM mostdeliveries
)
WHERE ROWNUM = 1;


--QUESTION 6
SET SERVEROUTPUT ON;
DECLARE
    name CustomersDelivery.FirstName %TYPE;
    phone CustomersDelivery.PhoneNumber %TYPE;
    email CustomersDelivery.Email %TYPE;
    bills Billing.BillId %TYPE;
    
    CURSOR rating IS
        SELECT
            CustomersDelivery.FirstName,
            CustomersDelivery.Surname,
            CustomersDelivery.PhoneNumber,
            CustomersDelivery.Email,
            COUNT(Billing.CustomerID ) AS numBills
            
        FROM  
            CustomersDelivery
        INNER JOIN  Billing ON  CustomersDelivery.CustomerId = Billing.CustomerID
        
        GROUP BY 
            CustomersDelivery.FirstName,
            CustomersDelivery.Surname,
            CustomersDelivery.PhoneNumber,
            CustomersDelivery.Email;
        
        
BEGIN 
    FOR eachRat IN rating
        LOOP
            name := eachRat.FirstName || ', ' || eachRat.Surname;
            phone := eachRat.PhoneNumber;
            email := eachRat.Email;
            bills := eachRat.numBills;
            
            IF(bills >=4) THEN
                dbms_output.put_line('--------------------------------------------------') ; 
                dbms_output.put_line('CUSTOMER NAME :' || name);
                dbms_output.put_line('CUSTOMER PHONE :' || phone) ;
                dbms_output.put_line('CUSTOMER EMAIL :' || email)  ;
                dbms_output.put_line('NumberOfBills :' || bills || ('(ELITE)'));
                dbms_output.put_line('Thank you for being our valued Customer');
                dbms_output.put_line('--------------------------------------------------');
                
            ELSE
                dbms_output.put_line('--------------------------------------------------') ; 
                dbms_output.put_line('CUSTOMER NAME :' || name);
                dbms_output.put_line('CUSTOMER PHONE :' || phone) ;
                dbms_output.put_line('CUSTOMER EMAIL :' || email)  ;
                dbms_output.put_line('NumberOfBills :' || bills);
                dbms_output.put_line('--------------------------------------------------'); 
            
            END IF;
        END LOOP;
END;        
        