/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

/**
 *
 * @author yhan4
 */
public class UserSession {
    private static String nama, alamat, username, password, ID, telp;     //variabel nama user 
    
    public static void setNama(String namaUser){    //method isi variabel    
        UserSession.nama = namaUser;
    }
    public static String getNama(){     //method ambil variabel
        return nama;
    }
    
    public static void setAlamat(String namaAlamat){    //method isi variabel    
        UserSession.alamat = namaAlamat;
    }
    public static String getAlamat(){     //method ambil variabel
        return alamat;
    }
    
    public static void setUsername(String namaUser){    //method isi variabel    
        UserSession.username = namaUser;
    }
    public static String getUsername(){     //method ambil variabel
        return username;
    }
    
    public static void setPassword(String namaPassword){    //method isi variabel    
        UserSession.password = namaPassword;
    }
    public static String getPassword(){     //method ambil variabel
        return password;
    }
    
    public static void setID(String namaID){    //method isi variabel    
        UserSession.ID = namaID;
    }
    public static String getID(){     //method ambil variabel
        return ID;
    }

    public static String getTelp() {
        return telp;
    }
    public static void setTelp(String telp) {
        UserSession.telp = telp;
    }
}
