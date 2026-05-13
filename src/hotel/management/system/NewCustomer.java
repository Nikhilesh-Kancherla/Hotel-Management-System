package hotel.management.system;

import java.awt.*;
import java.util.Date;
import javax.swing.*;
import java.sql.*;	
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class NewCustomer extends JFrame {
    private JPanel contentPane;
    private JTextField t1, t2, t3, t6;
    private JComboBox<String> comboBox;
    private JLabel checkintime;
    private JRadioButton r1, r2;
    private Choice c1;

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> {
            try {
                NewCustomer frame = new NewCustomer();
                frame.setVisible(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }

    public NewCustomer() {
        setBounds(400, 200, 850, 550);
        contentPane = new JPanel();
        setContentPane(contentPane);
        contentPane.setLayout(null);

        ImageIcon i1  = new ImageIcon(ClassLoader.getSystemResource("icons/fifth.png"));
        Image i3 = i1.getImage().getScaledInstance(300, 400, Image.SCALE_DEFAULT);
        ImageIcon i2 = new ImageIcon(i3);
        JLabel l1 = new JLabel(i2);
        l1.setBounds(480, 10, 300, 500);
        add(l1);

        JLabel lblName = new JLabel("NEW CUSTOMER FORM");
        lblName.setFont(new Font("Yu Mincho", Font.PLAIN, 20));
        lblName.setBounds(118, 11, 260, 53);
        contentPane.add(lblName);

        JLabel lblId = new JLabel("ID :");
        lblId.setBounds(35, 76, 200, 14);
        contentPane.add(lblId);

        comboBox = new JComboBox<>(new String[] {"Passport", "Aadhar Card", "Voter Id", "Driving License"});
        comboBox.setBounds(271, 73, 150, 20);
        contentPane.add(comboBox);

        JLabel l2 = new JLabel("Number :");
        l2.setBounds(35, 111, 200, 14);
        contentPane.add(l2);

        t1 = new JTextField();
        t1.setBounds(271, 111, 150, 20);
        contentPane.add(t1);

        JLabel lblName_1 = new JLabel("Name :");
        lblName_1.setBounds(35, 151, 200, 14);
        contentPane.add(lblName_1);

        t2 = new JTextField();
        t2.setBounds(271, 151, 150, 20);
        contentPane.add(t2);

        JLabel lblGender = new JLabel("Gender :");
        lblGender.setBounds(35, 191, 200, 14);
        contentPane.add(lblGender);

        r1 = new JRadioButton("Male");
        r1.setBounds(271, 191, 80, 12);
        r2 = new JRadioButton("Female");
        r2.setBounds(350, 191, 100, 12);

        ButtonGroup bg = new ButtonGroup();
        bg.add(r1);
        bg.add(r2);
        
        contentPane.add(r1);
        contentPane.add(r2);

        JLabel lblCountry = new JLabel("Country :");
        lblCountry.setBounds(35, 231, 200, 14);
        contentPane.add(lblCountry);

        t3 = new JTextField();
        t3.setBounds(271, 231, 150, 20);
        contentPane.add(t3);

        JLabel lblReserveRoomNumber = new JLabel("Allocated Room Number :");
        lblReserveRoomNumber.setBounds(35, 274, 200, 14);
        contentPane.add(lblReserveRoomNumber);

        c1 = new Choice();
        try {
            Conn c = new Conn();
            ResultSet rs = c.s.executeQuery("SELECT * FROM room WHERE availability = 'Available'");
            while (rs.next()) {
                c1.add(rs.getString("roomnumber"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        c1.setBounds(271, 274, 150, 20);
        contentPane.add(c1);

        JLabel lbltime = new JLabel("Checked in :");
        lbltime.setBounds(35, 316, 190, 14);
        contentPane.add(lbltime);

        Date date = new Date();
        checkintime = new JLabel("" + date);
        checkintime.setBounds(270, 316, 250, 25);
        checkintime.setFont(new Font("Raleway", Font.PLAIN, 15));
        contentPane.add(checkintime);

        JLabel lblDeposite = new JLabel("Deposit :");
        lblDeposite.setBounds(35, 359, 200, 14);
        contentPane.add(lblDeposite);

        t6 = new JTextField();
        t6.setBounds(271, 359, 150, 20);
        contentPane.add(t6);

        JButton btnAdd = new JButton("Add");
        btnAdd.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                Conn c = new Conn();
                String gender = r1.isSelected() ? "Male" : (r2.isSelected() ? "Female" : "");
                String room = c1.getSelectedItem();
                
                try {
                    String document = (String) comboBox.getSelectedItem();
                    String number = t1.getText();
                    String name = t2.getText();
                    String country = t3.getText();
                    String checkInTime = checkintime.getText();
                    int deposit;

                    try {
                        deposit = Integer.parseInt(t6.getText());
                    } catch (NumberFormatException ex) {
                        JOptionPane.showMessageDialog(null, "Please enter a valid deposit amount.");
                        return;
                    }

                    if (name.isEmpty() || number.isEmpty() || country.isEmpty()) {
                        JOptionPane.showMessageDialog(null, "All fields must be filled.");
                        return;
                    }

                    String q1 = "INSERT INTO customer VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
                    PreparedStatement pst = c.c.prepareStatement(q1);
                    pst.setString(1, document);
                    pst.setString(2, number);
                    pst.setString(3, name);
                    pst.setString(4, gender);
                    pst.setString(5, country);
                    pst.setString(6, room);
                    pst.setString(7, checkInTime);
                    pst.setInt(8, deposit);
                    pst.executeUpdate();

                    String q2 = "UPDATE room SET availability = 'Occupied' WHERE roomnumber = ?";
                    pst = c.c.prepareStatement(q2);
                    pst.setString(1, room);
                    pst.executeUpdate();

                    JOptionPane.showMessageDialog(null, "Data Inserted Successfully");
                    new Reception().setVisible(true);
                    setVisible(false);
                } catch (SQLException e1) {
                    JOptionPane.showMessageDialog(null, "SQL Error: " + e1.getMessage());
                }
            }
        });
        btnAdd.setBounds(100, 430, 120, 30);
        contentPane.add(btnAdd);

        JButton btnExit = new JButton("Back");
        btnExit.addActionListener(e -> {
            new Reception().setVisible(true);
            setVisible(false);
        });
        btnExit.setBounds(260, 430, 120, 30);
        contentPane.add(btnExit);

        getContentPane().setBackground(Color.WHITE);
    }
}
