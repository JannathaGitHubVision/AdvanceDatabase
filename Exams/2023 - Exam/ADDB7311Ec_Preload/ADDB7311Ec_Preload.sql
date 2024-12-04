Create table CUSTOMER
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
                       REFERENCES CUSTOMER(cust_id),
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
  into CUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A115', 'Patrick', 'Connor', '3 Main Road', '0821253659')
  into CUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A116', 'Sally', 'Williams', '13 Cape Road', '0769658547')
  into CUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A117', 'Wallace', 'Smith', '3 Mountain Road', '0863256574')
  into CUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A118', 'Richard', 'Hanson', '8 Circle Road', '0762356587')
  into CUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A119', 'Gary', 'Bitterhout', '15 Main Road', '0821235258')
  into CUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A120', 'Thando', 'Zolani', '88 Summer Road', '0847541254')
  into CUSTOMER(cust_id, fname, sname, primary_address, contact)
    values('A121', 'Philip', 'Jackson', '3 Long Road', '0745556658')
  into CUSTOMER(cust_id, fname, sname, primary_address, contact)
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
