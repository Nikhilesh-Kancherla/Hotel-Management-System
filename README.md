# Hotel Management System

This Hotel Management System is a comprehensive Java Swing and MySQL based desktop application designed to streamline hotel operations by managing tasks such as reservations, check-ins, check-outs, and billing.

## Features
- **Secure Login System**: Restricts access to authorized users (Default: `admin` / `12345`).
- **Room Management**: Track room availability, cleaning status, pricing, and bed types.
- **Customer Management**: Handle check-ins, check-outs, deposits, and ID tracking.
- **Employee & Department Details**: Manage staff roles, salaries, and department budgets.
- **Driver Management**: Track available hotel drivers and vehicle information.
- **Database Automation**: Includes SQL triggers to automatically update room availability upon customer checkout, and functions/procedures for data retrieval.

## Technology Stack
- **Frontend**: Java Swing (NetBeans GUI Builder)
- **Backend**: Core Java
- **Database**: MySQL
- **Connectivity**: JDBC (Java Database Connectivity)

## Setup & Installation

### 1. Database Setup
1. Ensure you have **MySQL Server** installed and running on your machine.
2. Open your preferred SQL client (MySQL Workbench, Command Line, etc.).
3. Run the complete SQL script provided in `database_setup.sql`. 
   *This will automatically create the `hotelmanagementystem` database, build all necessary tables, create advanced SQL logic (triggers/procedures), and populate it with sample data.*

### 2. Project Configuration
1. Open the project in **Apache NetBeans**.
2. Download the **MySQL JDBC Driver** (`mysql-connector-java.jar`) if you don't already have it.
3. In NetBeans, right-click the **Libraries** folder in your project tree and click **Add JAR/Folder**. Select your downloaded MySQL driver.
4. Open `src/hotel/management/system/Conn.java`.
5. Update line 12 with your actual MySQL `root` password where it says `"YOUR_PASSWORD_HERE"`:
   ```java
   c = DriverManager.getConnection("jdbc:mysql:///hotelmanagementystem", "root", "YOUR_PASSWORD_HERE");
   ```

### 3. Run the Application
- Right-click on the main starting class (usually `Login.java` or `HotelManagementSystem.java`) and select **Run File**, or press **Shift + F6**.

## License
This project is open-source and available for educational and personal use.
