 create table PETS
(
    pet_id            number(6)           not null      primary key,
    pet_type      	  varchar2(50)        not null,
    pet_breed         varchar2(50)        not null,
    price             number(8,2)         not null
);

create table CUSTOMER
(
    customer_id         varchar2(10)     not null    primary key,
    customer_name       varchar2(50)     not null,
    customer_email      varchar2(50)     not null
);

create table PET_SALES
(
    sales_id        int             not null    primary key,
    sales_date      date            not null,
    pet_id          number(6)       not null,
                      CONSTRAINT fk_pet_id
                      FOREIGN KEY (pet_id)
                      REFERENCES PETS(pet_id),
    customer_id     varchar2(10)       not null,
                      CONSTRAINT fk_cust_id
                      FOREIGN KEY (customer_id)
                      REFERENCES CUSTOMER(customer_id)
);

insert all
  into PETS(pet_id, pet_type, pet_breed, price)
    values(100001, 'Dog', 'Jack Russel', 5000)
  into PETS(pet_id, pet_type, pet_breed, price)
   values(100002,  'Cat', 'Siamese', 3800)
  into PETS(pet_id, pet_type, pet_breed, price)
   values(100003,  'Bird', 'Parrot', 2500)
  into PETS(pet_id, pet_type, pet_breed, price)
   values(100004,  'Fish', 'Koi', 280)
  into PETS(pet_id, pet_type, pet_breed, price)
   values(100005,  'Rabbit', 'Dwarf', 550)
  Select * from dual;
  Commit;

insert all
  into CUSTOMER(customer_id, customer_name, customer_email)
    values('cust_101', 'Jeff Jones', 'jj@xcom.com')
  into CUSTOMER(customer_id, customer_name, customer_email)
   values('cust_102', 'Sally Williams', 'sally@ymail.com')
  into CUSTOMER(customer_id, customer_name, customer_email)
   values('cust_103', 'Sam Henry', 'sat@xsat.com')
  into CUSTOMER(customer_id, customer_name, customer_email)
   values('cust_104', 'Jack West', 'jw@xsat.com')
  into CUSTOMER(customer_id, customer_name, customer_email)
   values('cust_105', 'Jabulani Zintle', 'jaz@xsat.com')
  Select * from dual;
  Commit;
  
insert all
  into PET_SALES(sales_id, sales_date, pet_id, customer_id)
    values(1, '15 March 2023', 100002, 'cust_101')
  into PET_SALES(sales_id, sales_date, pet_id, customer_id)
    values(2, '17 March 2023', 100001, 'cust_104')
  into PET_SALES(sales_id, sales_date, pet_id, customer_id)
    values(3, '27 March 2023', 100003, 'cust_103')
  into PET_SALES(sales_id, sales_date, pet_id, customer_id)
    values(4, '30 March 2023', 100005, 'cust_102')
  into PET_SALES(sales_id, sales_date, pet_id, customer_id)
    values(5, '31 March 2023', 100004, 'cust_105')
  Select * from dual;
  Commit;
  
  
SELECT * FROM CUSTOMER;
SELECT * FROM PETS;
SELECT * FROM PET_SALES;



--QUESTION 1
SELECT CUSTOMER.customer_email,PETS.pet_id,PET_SALES.sales_date
FROM CUSTOMER
INNER JOIN PET_SALES ON CUSTOMER.customer_id = PET_SALES.customer_id
INNER JOIN PETS ON PETS.pet_id = PET_SALES.pet_id;



--QUESTION 2
CREATE OR REPLACE VIEW vwPetSalesDetails AS
SELECT CUSTOMER.customer_id,PETS.pet_id,PET_SALES.sales_date AS SALES_DATE
FROM CUSTOMER
INNER JOIN PET_SALES ON CUSTOMER.customer_id = PET_SALES.customer_id
INNER JOIN PETS ON PETS.pet_id = PET_SALES.pet_id
WHERE PET_SALES.sales_date BETWEEN '15 March 2023' AND '18 March 2023';

SELECT * FROM vwPetSalesDetails;



--QUESTION 3
SET SERVEROUTPUT ON;
DECLARE
    name CUSTOMER.customer_name %TYPE;
    breed PETS.pet_breed  %TYPE;
    price PETS.price  %TYPE;
    
    CURSOR val IS
    SELECT CUSTOMER.customer_name,PETS.pet_breed,PETS.price
    FROM CUSTOMER
        INNER JOIN PET_SALES ON CUSTOMER.customer_id = PET_SALES.customer_id
        INNER JOIN PETS ON PETS.pet_id = PET_SALES.pet_id;

BEGIN   
    FOR v IN val
        LOOP
            name := v.customer_name;
            breed := v.pet_breed;
            price := v.price;
            
            dbms_output.put_line('-------------------------------------------------');
            dbms_output.put_line('CUSTOMER NAME : ' || name );
            dbms_output.put_line('BREED : ' || breed );
            dbms_output.put_line('PRICE : R ' || price );
            dbms_output.put_line('-------------------------------------------------');
        END LOOP;
END;


--QUESTION 4
SET SERVEROUTPUT ON;
DECLARE
    name CUSTOMER.customer_name %TYPE;
    purchase_count NUMBER ;
    
    CURSOR val IS
    SELECT CUSTOMER.customer_name, COUNT(PETS.pet_id) as purchase_count
    FROM CUSTOMER
        INNER JOIN PET_SALES ON CUSTOMER.customer_id = PET_SALES.customer_id
        INNER JOIN PETS ON PETS.pet_id = PET_SALES.pet_id
        GROUP BY CUSTOMER.customer_name;
        
BEGIN   
    FOR v IN val
        LOOP
            name := v.customer_name;
           purchase_count := v.purchase_count;
            
            dbms_output.put_line('-------------------------------------------------');
            dbms_output.put_line('CUSTOMER NAME : ' || name );
            dbms_output.put_line('PURCHASE COUNT : ' || purchase_count );
            dbms_output.put_line('-------------------------------------------------');
        END LOOP;
END;     
    

--QUESTION 5
CREATE SEQUENCE id_seq
START WITH 3000
INCREMENT BY 10
NOMINVALUE
MAXVALUE 1000000;

SELECT id_seq.NEXTVAL FROM dual;

