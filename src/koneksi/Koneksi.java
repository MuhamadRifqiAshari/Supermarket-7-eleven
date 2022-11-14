/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author yhan4
 */
public class Koneksi {
    public static Connection getKoneksi(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection terkoneksi = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/Supermarket7-eleven", "root", "");
            return terkoneksi;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
}
