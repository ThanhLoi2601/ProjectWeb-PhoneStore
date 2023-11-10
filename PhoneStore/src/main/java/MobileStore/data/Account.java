/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MobileStore.data;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 *
 * @author DELL
 */
@Entity
public class Account implements Serializable {

    @Id
    @GeneratedValue( strategy=GenerationType.AUTO )
    private String username;

    private String password;
    
    @OneToOne //(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        digest.reset();

        byte[] mdbytes = digest.digest(password.getBytes("UTF-8"));

        StringBuilder hexString = new StringBuilder();
        for (int i = 0; i < mdbytes.length; i++) {
            hexString.append(Integer.toHexString(0xFF & mdbytes[i]));
        }
        this.password = hexString.toString();
    }

    public Account(String username, String password, User user) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        this.username = username;
        this.user = user;
        this.setPassword(password);
    }

    public Account() {
    }

}
