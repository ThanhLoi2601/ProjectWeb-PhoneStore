/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MobileStore.data;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 *
 * @author DELL
 */
@Entity
public class LineItem implements Serializable {
    
    @Id
    @OneToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
    private Product item;
    
    private int quanlity;

    public LineItem(Product item, int quanlity) {
        this.item = item;
        this.quanlity = quanlity;
    }

    public LineItem() {
    }

    public Product getItem() {
        return item;
    }

    public void setItem(Product item) {
        this.item = item;
    }

    public int getQuanlity() {
        return quanlity;
    }

    public void setQuanlity(int quanlity) {
        this.quanlity = quanlity;
    }
}
