/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class user {
    private int id;
    private String email;
    private String password;
    private String username;
    private int access;
    public user() {
        super();
    }
    public user(int id,String email, String password, String username, int access) {
        this.id=id;
        this.email = email;
        this.password = password;
        this.username = username;
        this.access = access;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getAccess() {
        return access;
    }

    public void setAccess(int access) {
        this.access = access;
    }

    @Override
    public String toString() {
        return "uer{" +"id=" + id +  ",email=" + email + ", password=" + password + ", username=" + username + ", access=" + access + '}';
    }
    

   
}
