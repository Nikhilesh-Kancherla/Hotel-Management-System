package hotel.management.system;

import java.sql.*;

public class Conn {
    Connection c;
    Statement s;

    public Conn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql:///hotelmanagementystem", "root", "YOUR_PASSWORD_HERE");

            s = c.createStatement();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}