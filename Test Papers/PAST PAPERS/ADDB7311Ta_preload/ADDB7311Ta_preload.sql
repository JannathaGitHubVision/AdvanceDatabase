create table EMPLOYEES 
(
    employee_id     varchar2(10)            not null      primary key,
    first_name      varchar2(10)         not null,
    surname         varchar2(10)         not null,
    email           varchar2(16)         not null
);

create table LOCATIONS 
(
    location_id         		varchar2(10)   	 not null    primary key,
    location_type       		varchar2(10)     not null,
    location_address      		varchar2(20)    not null,
    location_difficulty     	number(3,0)      not null
);

create table ENVIRONMENT_ACTIVITIES 
(
    env_id          varchar(10)     not null    primary key,
    env_date        date            not null,
    env_hours    	number(3,2)     not null,
    employee_id     varchar2(10)       not null,
                      CONSTRAINT emp_id
                      FOREIGN KEY (employee_id)
                                            REFERENCES EMPLOYEES(employee_id),
    location_id     varchar2(10)       not null,
                      CONSTRAINT loc_id
                      FOREIGN KEY (location_id)
                      REFERENCES LOCATIONS(location_id)
);

insert all
  into EMPLOYEES (employee_id, first_name, surname, email)
    values('EMP_1', 'Jeff', 'Hendricks', 'jh@yahoo.com')
  into EMPLOYEES (employee_id, first_name, surname, email)
   values('EMP_2', 'John', 'Abelton', 'johna@gmail.com')
  into EMPLOYEES (employee_id, first_name, surname, email)
   values('EMP_3', 'Sam', 'Goodwill', 'samgo@isat.co.za')
  Select * from dual;
  Commit;
  
insert all
  into LOCATIONS (location_id, location_type, location_address, location_difficulty)
    values('LOC_1', 'Beach', '10 Seaside Road', 6)
  into LOCATIONS (location_id, location_type, location_address, location_difficulty)
   values('LOC_2', 'Forest', '13 Treeview Road', 5)
  into LOCATIONS (location_id, location_type, location_address, location_difficulty)
   values('LOC_3', 'Lake', '18 Waterside Lane', 8)
  Select * from dual;
  Commit;
  
insert all
  into ENVIRONMENT_ACTIVITIES(env_id, env_date, env_hours, employee_id, location_id)
    values('ENV_1', '15 July 2022', 3.00, 'EMP_1', 'LOC_1')
  into ENVIRONMENT_ACTIVITIES(env_id, env_date, env_hours, employee_id, location_id)
   values('ENV_2', '17 July 2022', 2.00, 'EMP_3', 'LOC_3')
  into ENVIRONMENT_ACTIVITIES(env_id, env_date, env_hours, employee_id, location_id)
   values('ENV_3', '18 July 2022', 1.00, 'EMP_2', 'LOC_2')
  INTO ENVIRONMENT_ACTIVITIES(env_id, env_date, env_hours, employee_id, location_id)
    values('ENV_4', '19 July 2022', 2.00, 'EMP_1', 'LOC_3')
  Select * from dual;
  Commit;


