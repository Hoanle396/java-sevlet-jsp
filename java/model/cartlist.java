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
public class cartlist {
    private int id;
    private String image1;
    private String name;
    private Float price;

    public cartlist(int id, String image1, String name, Float price) {
        this.id = id;
        this.image1 = image1;
        this.name = name;
        this.price = price;
    }

    public cartlist() {
        super();
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "cart{" + "id=" + id + ", image1=" + image1 + ", name=" + name + ", price=" + price + '}';
    }
    
}
