-- Database: employees

-- DROP DATABASE IF EXISTS employees;

CREATE TABLE employee_details(
employee_id INT PRIMARY KEY,
first_Name varchar(10) NOT NULL,
last_Name varchar(25) NOT NULL,
id_Number varchar(13) NOT NULL
);
INSERT INTO employee_details VALUES
(1,'Motsei','Sefanyetso','0120550'),
(2,'Lethabo','Mabeloane','0134554'),
(3,'Thabang','Forbes','0142250'),
(4,'Lesedi','Makitla','0162234'),
(5,'Thabang','Forbes','0142250');
select * from employee_details



CREATE TYPE Gender as ENUM('Female','Male','Others');
CREATE TABLE employee_Spouse (
    Spouse_ID INT PRIMARY KEY,
    employee_id INT NOT NULL, 
    F_NAME VARCHAR(20) NOT NULL,
    L_NAME VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL, 
    DOB DATE NOT NULL,
    Gender Gender NOT NULL,
    PhoneNumber BigInt, 
    FOREIGN KEY (employee_id) REFERENCES employee_details(employee_id)
);

INSERT INTO employee_Spouse VALUES
(20,2,'karabo','Monama','777 Florida West','2007-05-15','Female',2765966789);
(10,3,'Ditebogo','Vhavenda','0122 Limpopo gaMashashane','1999-10-10','Others',27679229812);

SELECT * FROM employee_Spouse;
