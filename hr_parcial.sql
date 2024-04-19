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


















