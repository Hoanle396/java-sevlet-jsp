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
public class reaect {
    private String name;
    private String avatar;
    private String reaect;

    public reaect() {
        super();
    }

    public reaect(String name, String avatar, String reaect) {
        this.name = name;
        this.avatar = avatar;
        this.reaect = reaect;
    }

    public reaect(int aInt, String string, String string0, float aFloat) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getReaect() {
        return reaect;
    }

    public void setReaect(String reaect) {
        this.reaect = reaect;
    }

    @Override
    public String toString() {
        return "reaect{" + "name=" + name + ", avatar=" + avatar + ", reaect=" + reaect + '}';
    }
    
}
