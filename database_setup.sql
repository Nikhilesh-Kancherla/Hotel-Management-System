create database hotelmanagementystem;
use hotelmanagementystem;

create table login(username varchar(25)not null ,password varchar(25)not null);
insert into login values ('admin','12345');

create table employee(name varchar(25) not null,
 age int, 
 gender varchar(10),
 job varchar(50) not null,
 salary decimal (10,2) not null,
 phone varchar(15) not null,
 aadhar varchar(40) PRIMARY KEY, 
 email varchar(20)
 );

insert into employee (name, age, gender, job, salary, phone, aadhar, email) values
('Aditya', 30, 'Male', 'Security', 35000.00, '7894561230', '7894-8520-9630', 'aditya@gmail.com'),
('Pankaj Tripathi', 35, 'Male', 'Chef', 35000.00, '9874563210', '7896-4521-4563', 'pankaj@gmail.com'),
('Sam', 36, 'Male', 'Manager', 50000.00, '7456981203', '5623-8526-3036', 'sam@gmail.com'),
('Amit', 28, 'Male', 'Receptionist', 25000.00, '8547963210', '7845-9632-1023', 'amit@gmail.com'),
('Priya', 32, 'Female', 'Manager', 55000.00, '9632587410', '7456-8523-9632', 'priya@gmail.com'),
('Neha', 29, 'Female', 'Housekeeping', 22000.00, '8123456789', '7896-5412-3652', 'neha@gmail.com'),
('Rohan', 27, 'Male', 'Waiter', 23000.00, '7896541230', '3214-5698-7412', 'rohan@gmail.com'),
('Vikram', 40, 'Male', 'Chef', 37000.00, '9541236987', '9874-6521-3698', 'vikram@gmail.com'),
('Sanya', 31, 'Female', 'Receptionist', 26000.00, '8457963210', '2589-7412-3698', 'sanya@gmail.com'),
('Kiran', 34, 'Female', 'Housekeeping', 24000.00, '7894561234', '9632-1478-8523', 'kiran@gmail.com'),
('Rajesh', 45, 'Male', 'General Manager', 70000.00, '7896541236', '4569-3214-7856', 'rajesh@gmail.com'),
('Arun', 26, 'Male', 'Waiter', 22000.00, '8521479630', '7412-3659-9874', 'arun@gmail.com'),
('Megha', 30, 'Female', 'Chef', 36000.00, '9632587412', '1598-3574-2698', 'megha@gmail.com'),
('Nikhil', 33, 'Male', 'Chef', 35500.00, '8745632198', '9874-1236-5478', 'nikhil@gmail.com'),
('Swati', 29, 'Female', 'Chef', 36500.00, '9517538246', '7896-3214-6523', 'swati@gmail.com'),
('Kunal', 31, 'Male', 'Security', 34000.00, '9876543215', '9517-8456-2369', 'kunal@gmail.com'),
('Vivek', 29, 'Male', 'Security', 33000.00, '7854123698', '3654-7896-1245', 'vivek@gmail.com');

create table room (
 roomnumber varchar(10) not null primary key,
 availability varchar(20) not null, 
 cleaning_status varchar(20) not null, 
 prize decimal(10,2) not null,
 bed_type varchar(20) not null
);

insert into room (roomnumber, availability, cleaning_status, prize, bed_type) values
('101', 'Available', 'Dirty', 2200.00, 'Single Bed'),
('102', 'Occupied', 'Cleaned', 4500.00, 'Double Bed'),
('103', 'Occupied', 'Cleaned', 2200.00, 'Single Bed'),
('104', 'Occupied', 'Dirty', 5000.00, 'Double Bed'),
('105', 'Occupied', 'Cleaned', 3000.00, 'Single Bed'),
('106', 'Occupied', 'Dirty', 3200.00, 'Double Bed'),
('107', 'Available', 'Cleaned', 3500.00, 'Single Bed'),
('108', 'Available', 'Cleaned', 2500.00, 'Double Bed'),
('109', 'Available', 'Dirty', 2800.00, 'Single Bed'),
('110', 'Available', 'Cleaned', 4000.00, 'Double Bed'),
('111', 'Available', 'Cleaned', 4500.00, 'Double Bed'),
('112', 'Available', 'Dirty', 2600.00, 'Single Bed'),
('113', 'Available', 'Cleaned', 3800.00, 'Double Bed'),
('114', 'Available', 'Cleaned', 4000.00, 'Double Bed'),
('115', 'Available', 'Dirty', 3100.00, 'Single Bed'),
('116', 'Available', 'Cleaned', 4200.00, 'Double Bed'),
('117', 'Available', 'Dirty', 2400.00, 'Single Bed'),
('118', 'Available', 'Cleaned', 5000.00, 'Double Bed'),
('119', 'Available', 'Dirty', 2700.00, 'Single Bed'),
('120', 'Available', 'Cleaned', 4800.00, 'Double Bed');

create table driver (
 name varchar(20) not null,
 age varchar(10) not null,
 gender varchar(15) not null,
 company varchar(20) not null,
 brand varchar(20) not null,
 available varchar(20) not null,
 location varchar(40) not null
);

insert into driver (name, age, gender, company, brand, available, location) values
('Tom', '20', 'Male', 'Honda', 'Honda City', 'Yes', 'Downtown'),
('Sam', '30', 'Male', 'Toyota', 'Fortuner', 'Yes', 'Airport'),
('John', '28', 'Male', 'Ford', 'EcoSport', 'No', 'City Center'),
('Alex', '35', 'Male', 'Hyundai', 'Creta', 'Yes', 'Suburbs'),
('David', '40', 'Male', 'Maruti', 'Swift Dzire', 'No', 'Hotel Zone'),
('Michael', '25', 'Male', 'Mercedes', 'E-Class', 'Yes', 'Business District');

create table customer (
 document varchar(20) not null,
 number varchar(30) not null,
 name varchar(30) not null,
 gender varchar(15) not null,
 country varchar(20) not null,
 room varchar(10) not null,
 checkintime varchar(80) not null,
 deposit varchar(20) not null
);

insert into customer (document, number, name, gender, country, room, checkintime, deposit) values
('Passport', '9876543210', 'John Doe', 'Male', 'USA', '101', 'Mon Mar 03 14:30:00 IST 2025', '2200'),
('Aadhar Card', '8765432109', 'Raj Kumar', 'Male', 'India', '102', 'Tue Mar 04 12:15:00 IST 2025', '4500'),
('Driving Licence', '7654321098', 'Emma Watson', 'Female', 'UK', '103', 'Sun Mar 02 16:45:00 IST 2025', '2200'),
('Passport', '6543210987', 'Sophia Lee', 'Female', 'Canada', '104', 'Tue Mar 04 10:00:00 IST 2025', '5000'),
('Voter ID', '5432109876', 'Amit Sharma', 'Male', 'India', '105', 'Mon Mar 03 18:20:00 IST 2025', '3000'),
('Aadhar Card', '4321098765', 'Liam Johnson', 'Male', 'Australia', '106', 'Sun Mar 02 14:50:00 IST 2025', '3200');

create table department(department varchar(30),budget varchar(30));
insert into department values('Front Office','500000');
insert into department values('Housekeeping', '40000');
insert into department values('Food and Beverage', '23000');
insert into department values('Kitchen or Food Production', '540000');
insert into department values('Security', '320000');

-- Triggers
DELIMITER $$  
CREATE TRIGGER after_customer_delete  
AFTER DELETE ON customer  
FOR EACH ROW  
BEGIN  
    UPDATE room  
    SET availability = 'Available'  
    WHERE roomnumber = OLD.room;  
END $$  
DELIMITER ;

-- Function
DELIMITER $$  
CREATE FUNCTION get_employee_count(job_title VARCHAR(50))  
RETURNS INT  
DETERMINISTIC  
BEGIN  
    DECLARE total INT;  
    SELECT COUNT(*) INTO total FROM employee WHERE job = job_title;  
    RETURN total;  
END $$  
DELIMITER ;

-- Procedure
DELIMITER $$  
CREATE PROCEDURE get_customers_by_country(IN country_name VARCHAR(20))  
BEGIN  
    SELECT * FROM customer WHERE country = country_name;  
END $$  
DELIMITER ;

-- Cursor 1
DELIMITER $$  
CREATE PROCEDURE list_employees()  
BEGIN  
    DECLARE done INT DEFAULT FALSE;  
    DECLARE emp_name VARCHAR(25);  
    DECLARE emp_job VARCHAR(50);  
    DECLARE cur CURSOR FOR SELECT name, job FROM employee;  
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;  

    OPEN cur;  
    read_loop: LOOP  
        FETCH cur INTO emp_name, emp_job;  
        IF done THEN  
            LEAVE read_loop;  
        END IF;  
        SELECT emp_name AS Employee_Name, emp_job AS Job_Title;  
    END LOOP;  
    CLOSE cur;  
END $$  
DELIMITER ;

-- Cursor 2 (Renamed to list_employees_v2)
DELIMITER $$  
CREATE PROCEDURE list_employees_v2()  
BEGIN  
    DECLARE done INT DEFAULT FALSE;  
    DECLARE emp_name VARCHAR(25);  
    DECLARE emp_job VARCHAR(50);  

    DECLARE cur CURSOR FOR SELECT name, job FROM employee;  
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;  

    CREATE TEMPORARY TABLE temp_employee_list (
        Employee_Name VARCHAR(25),
        Job_Title VARCHAR(50)
    );

    OPEN cur;  

    read_loop: LOOP  
        FETCH cur INTO emp_name, emp_job;  

        IF done THEN  
            LEAVE read_loop;  
        END IF;  

        INSERT INTO temp_employee_list (Employee_Name, Job_Title) 
        VALUES (emp_name, emp_job);
    END LOOP;  

    CLOSE cur;  

    SELECT * FROM temp_employee_list;

    DROP TEMPORARY TABLE IF EXISTS temp_employee_list;
END $$  
DELIMITER ;
