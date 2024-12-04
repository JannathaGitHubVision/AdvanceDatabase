Create table MusicCUSTOMER
(
  cust_id	        varchar2(5)        not null    primary key,
  fname	            varchar2(20)       not null,
  sname			    varchar2(20)       not null,
  primary_address   varchar2(20)	   not null,
  contact       	varchar2(12)       not null
);

Create table TEACHER
(
  teach_id	        varchar2(5)        not null    primary key,
  fname	            varchar2(20)       not null,
  sname			    varchar2(20)       not null,
  contact       	varchar2(12)       not null
);

Create table LESSON
(
	lesson_id		 	 number(3,0)  		not null    primary key,
	lesson_type  	 	 varchar2(20)	   	not null,
	lesson_price    	 number(8,2)       	not null
);

Create table INVOICE
(
	inv_id	     NUMBER(5,0)  		not null    primary key,
	inv_date	     DATE       		not null,
	quantity		 NUMBER(3,0)	    not null,
	cust_id	         VARCHAR(5)        not null,
					   CONSTRAINT cust_id
                       FOREIGN KEY (cust_id)
                       REFERENCES MusicCUSTOMER(cust_id),
	teach_id	       VARCHAR2(10)       not null,
					   CONSTRAINT TEACHER
                       FOREIGN KEY (teach_id)
                       REFERENCES TEACHER(teach_id),
	lesson_id		   NUMBER(3,0)  not null,
					   CONSTRAINT lesson_id
                       FOREIGN KEY (lesson_id)
                       REFERENCES LESSON(lesson_id)
);

insert all
  into MusicCUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A115', 'Patrick', 'Connor', '3 Main Road', '0821253659')
  into MusicCUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A116', 'Sally', 'Williams', '13 Cape Road', '0769658547')
  into MusicCUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A117', 'Wallace', 'Smith', '3 Mountain Road', '0863256574')
  into MusicCUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A118', 'Richard', 'Hanson', '8 Circle Road', '0762356587')
  into MusicCUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A119', 'Gary', 'Bitterhout', '15 Main Road', '0821235258')
  into MusicCUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A120', 'Thando', 'Zolani', '88 Summer Road', '0847541254')
  into MusicCUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A121', 'Philip', 'Jackson', '3 Long Road', '0745556658')
  into MusicCUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A122', 'Sarah', 'Jones', '7 Sea Road', '0814745745')
  Select * from dual;
  Commit;
  
 insert all
  into TEACHER(teach_id, fname, sname, contact)
    values('T1', 'Andre', 'Jones',  '0721253659')
  into TEACHER(teach_id, fname, sname, contact)
    values('T2', 'Alan', 'Haslett',  '0869658547')
  into TEACHER(teach_id, fname, sname, contact)
    values('T3', 'Patricia', 'Gumede', '0763256574')
  Select * from dual;
  Commit;

 insert all
  into LESSON(lesson_id, lesson_type, lesson_price)
    values(101,  'Piano', 170)
  into LESSON(lesson_id, lesson_type, lesson_price)
    values(102,  'Clarinet', 160)
  into LESSON(lesson_id, lesson_type, lesson_price)
    values(103, 'Guitar',  165)
  into LESSON(lesson_id, lesson_type, lesson_price)
    values(104, 'Bass Guitar', 140)
  into LESSON(lesson_id, lesson_type, lesson_price)
    values(105, 'Flute', 155)
  Select * from dual;
  Commit;
  
  insert all
  into INVOICE(inv_id, inv_date, quantity, cust_id, teach_id, lesson_id)
    values(10111, '03-AUG-23', 1, 'A115', 'T3', 101)
  into INVOICE(inv_id, inv_date, quantity, cust_id, teach_id,  lesson_id)
    values(10211, '04-AUG-23', 2, 'A120', 'T2', 103)
  into INVOICE(inv_id, inv_date, quantity, cust_id, teach_id,  lesson_id)
    values(10311, '05-AUG-23', 1, 'A118', 'T1', 105)
  into INVOICE(inv_id, inv_date, quantity, cust_id, teach_id,  lesson_id)
    values(10411, '05-AUG-23', 1, 'A117', 'T2', 103)
  into INVOICE(inv_id, inv_date, quantity, cust_id, teach_id,  lesson_id)
    values(10511, '05-AUG-23', 3, 'A122', 'T1', 101)
  into INVOICE(inv_id, inv_date, quantity, cust_id, teach_id,  lesson_id)
    values(10611, '06-AUG-23', 1, 'A115', 'T3', 101)
  into INVOICE(inv_id, inv_date, quantity, cust_id, teach_id,  lesson_id)
    values(10711, '07-AUG-23', 1, 'A120', 'T1', 103)
  into INVOICE(inv_id, inv_date, quantity, cust_id, teach_id,  lesson_id)
    values(10811, '07-AUG-23', 2, 'A118', 'T3', 105)
  into INVOICE(inv_id, inv_date, quantity, cust_id, teach_id,  lesson_id)
    values(10911, '08-AUG-23', 1, 'A119', 'T3', 102)
  Select * from dual;
  Commit;
  
DROP TABLE MusicCUSTOMER;
DROP TABLE TEACHER;
DROP TABLE LESSON;


SELECT * FROM MusicCUSTOMER;
SELECT * FROM TEACHER;
SELECT * FROM LESSON;
SELECT * FROM INVOICE;




--**QUESTION 1**
SET SERVEROUTPUT ON;
DECLARE
    custName MusicCUSTOMER.fname %TYPE;
    teacherName TEACHER.fname %TYPE;
    lessonType LESSON.lesson_type %TYPE;
    invDate INVOICE.inv_date %Type;

    CURSOR M_Val IS
    SELECT 
    MusicCUSTOMER.fname || ' ' || MusicCUSTOMER.sname AS CustFullname,
    TEACHER.fname || ' ' || TEACHER.sname AS TeachFullName,
    LESSON.lesson_type, 
    INVOICE.inv_date,
    MusicCUSTOMER.cust_id
    FROM
    MusicCUSTOMER
    INNER JOIN INVOICE ON MusicCUSTOMER.cust_id = INVOICE.cust_id
    INNER JOIN TEACHER ON TEACHER.teach_id = INVOICE.teach_id
    INNER JOIN LESSON ON LESSON.lesson_id = INVOICE.lesson_id
    WHERE MusicCUSTOMER.cust_id = 'A122'
    ORDER BY MusicCUSTOMER.cust_id;
    
BEGIN
    FOR E_Val IN M_Val
        LOOP
            custName := E_Val.CustFullname;
            teacherName := E_Val.TeachFullName;
            lessonType := E_Val.lesson_type;
            invDate := E_Val.inv_date;
            
        dbms_output.put_line('---------------------------------------------');
        dbms_output.put_line('CUSTOMER : ' || custName);
        dbms_output.put_line('TEACHER : ' || teacherName);
        dbms_output.put_line('LESSON TYPE : ' || lessonType);
        dbms_output.put_line('INVOICE DATE : '  || invDate);
        dbms_output.put_line('---------------------------------------------');

        END LOOP;
END;

--**Question 1.2**

--Advantages of using PL/SQL features:
--1. Block Structure: PL/SQL is a block-structured language. This means that the PL/SQL programs are divided into blocks, which can be nested within each other. 
--Each block forms a unit of a task or a logical module. PL/SQL Blocks can be stored in the database and reused.

--2. Procedural Language Capability: PL/SQL consists of procedural language constructs such as conditional statements (if else statements) and loops like (FOR loop). 
--It allows the user to code multiple forms of a program to accomplish a single task, making it easier to read and write program code.

--3. Better Performance: PL/SQL engine processes multiple SQL statements simultaneously as a single block, reducing network traffic and delivering higher performance. 





--Question 2
SET SERVEROUTPUT ON;
DECLARE
    LesonID LESSON.lesson_id %TYPE;
    lessonType LESSON.lesson_type %TYPE;
    invDate INVOICE.inv_date %Type;
    lesonPrice LESSON.lesson_price %Type;

    CURSOR M_Val IS
    SELECT 
    LESSON.lesson_id,
    LESSON.lesson_type,
    INVOICE.inv_date,
    LESSON.lesson_price AS TOTAL
    
    FROM LESSON
    INNER JOIN INVOICE ON LESSON.lesson_id = INVOICE.lesson_id
    
    WHERE INVOICE.inv_date BETWEEN '01-AUG-23' AND '03-AUG-23'
    ORDER BY INVOICE.inv_date;
    
BEGIN
    FOR E_Val IN M_Val
        LOOP
            LesonID := E_Val.lesson_id;
            lessonType := E_Val.lesson_type;
            invDate := E_Val.inv_date;
            lesonPrice := E_Val.TOTAL;
            
            dbms_output.put_line('---------------------------------------------');
            dbms_output.put_line('LESSON ID : ' || LesonID);
            dbms_output.put_line('LESSON TYPE : ' || lessonType);
            dbms_output.put_line('INVOICE DATE : '  || invDate);
            dbms_output.put_line('TOTAL :R '  || lesonPrice);


        END LOOP;
END;
    



--**QUESTION 3**
CREATE OR REPLACE PROCEDURE spTeacherInvokeDetails (I_id INVOICE.inv_id %TYPE,details OUT VARCHAR2)
IS
BEGIN
SELECT 'TEACHER ID: ' || TEACHER.teach_id || ', LESSON TYPE: ' || LESSON.lesson_type || ', INVOICE DATE: ' ||  INVOICE.inv_date
INTO details
FROM TEACHER
JOIN INVOICE ON TEACHER.teach_id = INVOICE.teach_id
JOIN LESSON ON LESSON.lesson_id = INVOICE.lesson_id

WHERE INVOICE.inv_id = I_id;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
    details := 'NO DATA FOUND';
END;

SET SERVEROUTPUT ON;
DECLARE
    details VARCHAR(100);
BEGIN
    spTeacherInvokeDetails(10711,details);
    dbms_output.put_line(details);
END;

--**Question 3.2**
--1. Maintainability: Subprograms make the code more maintainable. If a change is required, you only need to modify the subprogram code, 
--and all the programs that call the subprogram will get the updated functionality.

--2. Reduced Complexity: By encapsulating a complex operation into a subprogram, the main program becomes simpler and easier to understand and debug.

--3. Reusability and Modularity: Subprograms allow for code reusability. Once a subprogram is defined, it can be used repeatedly in a program, in other programs, or in other subprograms. 
--This promotes modularity, as each subprogram is designed to perform a specific task.



--**Question 4**
CREATE OR REPLACE FUNCTION fnCustomerLessons(I_id INVOICE.inv_id %TYPE)
RETURN VARCHAR2 AS details VARCHAR2(5000);
CURSOR VC IS
SELECT 'CUSTOMER INVOICE DETAILS: ' || MusicCUSTOMER.cust_id || ',' || LESSON.lesson_type || ',' ||  INVOICE.inv_date || ', R' ||  (LESSON.lesson_price * 0.14) AS vat_amount
FROM MusicCUSTOMER
JOIN INVOICE ON MusicCUSTOMER.cust_id = INVOICE.cust_id
JOIN LESSON ON LESSON.lesson_id =  INVOICE.lesson_id

WHERE INVOICE.inv_id = I_id;

BEGIN
    OPEN VC;
    FETCH VC INTO details;
    IF VC%NOTFOUND THEN
        details := 'NO DATA FOUND';
    END IF;
    RETURN details;
    CLOSE VC;
    
EXCEPTION
    WHEN OTHERS THEN
         RAISE_APPLICATION_ERROR(-20001, 'An error was encountered - ' || SQLCODE || ' -ERROR- ' || SQLERRM);
END;

SELECT fnCustomerLessons (10111) FROM DUAL;

--**Question 4.2**

--Differences between procedures and functions:
--1. Return Value: The main difference between a procedure and a function is that a function must always return a value, but a procedure may or may not return a value. 
--In this code, `fnCustomerLessons` is a function because it returns a value.

--2. Usage: Functions can be used in SQL statements anywhere an expression is used. For example, you can use a function in a SELECT, INSERT, UPDATE, or DELETE statement, as well as in WHERE, HAVING and ORDER BY clauses. 
--On the other hand, procedures cannot be used in SQL statements.

--3. Purpose: Functions are generally used to compute and return a single value. Procedures are typically used to perform an action such as modifying the database or processing business logic.



--**Question 5**

-- Corrected: Added semi-colon
SET SERVEROUTPUT ON;
DECLARE 
    -- Corrected: Changed 'PREPARE' to 'DECLARE'
    -- Corrected: Added semi-colon
    firstName MusicCUSTOMER.fname %TYPE; 
    surname MusicCUSTOMER.sname %TYPE;
CURSOR name IS
    -- Corrected: Changed 'SELECTING' to 'SELECT'
    SELECT c.fname, c.sname 
    -- Corrected: Added 'FROM' keyword
    FROM MusicCUSTOMER c;
BEGIN
    FOR rec IN name
    LOOP
        firstName := rec.fname;
        surname := rec.sname;
        dbms_output.put_line('FIRST NAME: ' || UPPER(firstName) || CHR(10) || 
                             'SURNAME: ' || UPPER(surname)); --Reduce some space in for surname
        dbms_output.put_line('---------------------------------------------');
    END LOOP; 
    -- Corrected: Changed 'END LOOPING' to 'END LOOP'
END;

--Question 6
CREATE OR REPLACE TRIGGER trg_check_quantity
BEFORE INSERT ON INVOICE
FOR EACH ROW
DECLARE
    ex_invalid_quantity EXCEPTION;
BEGIN
    IF :NEW.quantity <= 0 THEN
        RAISE ex_invalid_quantity;
    END IF;
EXCEPTION
    WHEN ex_invalid_quantity THEN
        RAISE_APPLICATION_ERROR(-20001, 'Quantity must be greater than zero');
END;

BEGIN
    INSERT INTO INVOICE (inv_id, inv_date, quantity, cust_id, teach_id, lesson_id)
    VALUES (1, SYSDATE, 0, 'CUST1', 'TEACH1', 1);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;

--A compound trigger in Oracle has four sections that are fired in response to different timing points. Here are two of them:

--1. BEFORE STATEMENT: This section is fired before the triggering statement is run. It's useful for initializing global variables that will be used in other sections of the trigger.

--2. AFTER STATEMENT: This section is fired after the triggering statement is run. It's useful for cleanup tasks, such as releasing resources that were acquired in the BEFORE STATEMENT section.

