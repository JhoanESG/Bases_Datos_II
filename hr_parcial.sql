----------------------------------------------------------------------
------------          CREACION DE TABLESPACES         ----------------
----------------------------------------------------------------------

-- Crear el tablespace para la tabla Employees
CREATE TABLESPACE employees_ts
DATAFILE 'C:\app\jhoan\product\21c\oradata\XE\employees_ts.dbf'
SIZE 100M AUTOEXTEND ON NEXT 50M MAXSIZE UNLIMITED;

-- Crear el tablespace para la tabla Departments
CREATE TABLESPACE departments_ts
DATAFILE 'C:\app\jhoan\product\21c\oradata\XE\departments_ts.dbf'
SIZE 50M AUTOEXTEND ON NEXT 25M MAXSIZE UNLIMITED;

-- Crear el tablespace para la tabla Locations
CREATE TABLESPACE locations_ts
DATAFILE 'C:\app\jhoan\product\21c\oradata\XE\locations_ts.dbf'
SIZE 50M AUTOEXTEND ON NEXT 25M MAXSIZE UNLIMITED;

-- Crear el tablespace para la tabla Jobs
CREATE TABLESPACE jobs_ts
DATAFILE 'C:\app\jhoan\product\21c\oradata\XE\jobs_ts.dbf'
SIZE 50M AUTOEXTEND ON NEXT 25M MAXSIZE UNLIMITED;

-- Crear el tablespace para la tabla Job_History
CREATE TABLESPACE job_history_ts
DATAFILE 'C:\app\jhoan\product\21c\oradata\XE\job_history_ts.dbf'
SIZE 100M AUTOEXTEND ON NEXT 50M MAXSIZE UNLIMITED;

-- Crear el tablespace para la tabla Countries
CREATE TABLESPACE countries_ts
DATAFILE 'C:\app\jhoan\product\21c\oradata\XE\countries_ts.dbf'
SIZE 50M AUTOEXTEND ON NEXT 25M MAXSIZE UNLIMITED;

-- Crear el tablespace para la tabla Regions
CREATE TABLESPACE regions_ts
DATAFILE 'C:\app\jhoan\product\21c\oradata\XE\regions_ts.dbf'
SIZE 50M AUTOEXTEND ON NEXT 25M MAXSIZE UNLIMITED;

----------------------------------------------------------------------
--------------       ASIGNACION DE TABLESPACES       -----------------
----------------------------------------------------------------------

-- Para la tabla Employees
ALTER TABLE Employees
MOVE TABLESPACE employees_ts;

-- Para la tabla Departments
ALTER TABLE Departments
MOVE TABLESPACE departments_ts;

-- Para la tabla Locations
ALTER TABLE Locations
MOVE TABLESPACE locations_ts;

-- Para la tabla Jobs
ALTER TABLE Jobs
MOVE TABLESPACE jobs_ts;

-- Para la tabla Job_History
ALTER TABLE Job_History
MOVE TABLESPACE job_history_ts;

-- Para la tabla Countries
ALTER TABLE Countries
MOVE TABLESPACE countries_ts;

-- Para la tabla Regions
ALTER TABLE Regions
MOVE TABLESPACE regions_ts;




----------------------------------------------------------------------
--------------          CREACION DE INDICES         ------------------
----------------------------------------------------------------------

CREATE INDEX idx_employee_id ON Job_History(Employee_ID);



----------------------------------------------------------------------
--------------          INSERCCION DE DATOS         ------------------
----------------------------------------------------------------------


-- Insertar nuevas regiones
Insert into REGIONS (REGION_ID, REGION_NAME) values ('5','Middle East');
Insert into REGIONS (REGION_ID, REGION_NAME) values ('6','Africa');
Insert into REGIONS (REGION_ID, REGION_NAME) values ('7','Oceania');
INSERT INTO REGIONS (REGION_ID, REGION_NAME) VALUES ('8', 'South America');
INSERT INTO REGIONS (REGION_ID, REGION_NAME) VALUES ('9', 'Central America');
INSERT INTO REGIONS (REGION_ID, REGION_NAME) VALUES ('10', 'Antarctica');


-- Insertar nuevos países
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CA','Canada','2');
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CH','Switzerland','1');
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('EG','Egypt','4');
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IL','Israel','4');
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('KW','Kuwait','4');
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ML','Malaysia','3');
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NG','Nigeria','4');
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('SG','Singapore','3');
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZM','Zambia','4');
Insert into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZW','Zimbabwe','4');

-- Insertar nuevos departamentos
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('130','Corporate Tax',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('140','Control And Credit',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('150','Shareholder Services',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('160','Benefits',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('170','Manufacturing',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('180','Construction',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('190','Contracting',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('200','Operations',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('210','IT Support',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('220','NOC',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('230','IT Helpdesk',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('240','Government Sales',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('250','Retail Sales',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('260','Recruiting',null,'1700');
Insert into DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('270','Payroll',null,'1700');


-- Insertar nuevos empleados
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('201','John','Doe','johndoe@example.com','123456789',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4000,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('202','Jane','Smith','janesmith@example.com','987654321',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4500,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('203','Michael','Johnson','michaeljohnson@example.com','111222333',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4200,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('204','Emily','Brown','emilybrown@example.com','444555666',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4100,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('205','Daniel','Martinez','danielmartinez@example.com','777888999',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4300,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('206','Olivia','Garcia','oliviagarcia@example.com','123123123',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4400,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('207','William','Rodriguez','williamrodriguez@example.com','456456456',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4600,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('208','Sophia','Lopez','sophialopez@example.com','789789789',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4700,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('209','James','Hernandez','jameshernandez@example.com','987987987',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4800,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('210','Isabella','Smith','isabellasmith@example.com','654654654',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',4900,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('211','Logan','Taylor','logantaylor@example.com','321321321',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',5000,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('212','Mia','Anderson','miaanderson@example.com','999999999',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',5100,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('213','Ethan','Thomas','ethanthomas@example.com','111111111',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',5200,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('214','Ava','Jackson','avajackson@example.com','333333333',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',5300,'101','80');
Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,MANAGER_ID,DEPARTMENT_ID) values ('215','Liam','White','liamwhite@example.com','555555555',to_date('2024-04-18','YYYY-MM-DD'),'SA_REP',5400,'101','80');


-- Insertar historial laboral
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('201',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('202',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('203',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('204',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('205',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('206',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('207',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('208',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('209',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('210',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('211',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('212',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('213',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('214',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('215',to_date('2024-04-18','YYYY-MM-DD'),null,'SA_REP','80');



-- Insertar más ubicaciones
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('300', '123 Main Street', '54321', 'Anytown', 'Any State', 'US');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('301', '456 Elm Street', '98765', 'Otherville', 'Some Province', 'CA');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('302', '789 Oak Street', '12345', 'Another City', 'Some State', 'US');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('303', '101 Pine Street', '67890', 'Smalltown', 'Some Region', 'CA');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('304', '202 Maple Street', '13579', 'Villageton', 'Another Province', 'US');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('305', '303 Cedar Street', '24680', 'Metropolis', 'Some Region', 'US');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('306', '404 Birch Street', '13579', 'Smallville', 'Another State', 'US');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('307', '505 Oakwood Drive', '97531', 'Harbor City', 'Some Province', 'CA');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('308', '606 Pine Avenue', '36925', 'Lakeview', 'Another Region', 'CA');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('309', '707 Maple Court', '25846', 'Riverside', 'Some State', 'US');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('310', '808 Elm Lane', '74125', 'Sunset', 'Another Province', 'US');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('311', '909 Cedar Avenue', '85296', 'Hillside', 'Some State', 'US');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('312', '1010 Birch Drive', '36925', 'Seaview', 'Another Region', 'CA');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('313', '1111 Oakwood Court', '14785', 'Mountaintop', 'Some Region', 'US');
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) VALUES ('314', '1212 Pine Lane', '96325', 'Valleyville', 'Another State', 'US');

-- Insertar más trabajos
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('AC_MGR', 'Accounting Manager', 8200, 16000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('AC_ACCOUNT', 'Public Accountant', 4200, 9000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('AD_ASST', 'Administration Assistant', 3000, 6000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('AD_VP', 'Administration Vice President', 15000, 30000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('FI_ACCOUNT', 'Finance Accountant', 4200, 9000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('FI_MGR', 'Finance Manager', 8200, 16000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('HR_REP', 'Human Resources Representative', 4000, 9000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('HR_REP', 'Human Resources Representative', 4000, 9000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('MK_MAN', 'Marketing Manager', 9000, 15000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('MK_REP', 'Marketing Representative', 4000, 9000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('PR_REP', 'Public Relations Representative', 4500, 10500);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('PU_CLERK', 'Purchasing Clerk', 2500, 5500);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('PU_MAN', 'Purchasing Manager', 8000, 15000);
INSERT INTO JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) VALUES ('SA_MAN', 'Sales Manager', 10000, 20000);













