/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MobileStore.DB;

import MobileStore.data.Cart;
import MobileStore.util.DBUtil;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

/**
 *
 * @author DELL
 */
public class CartDB {

    public static void delete(Cart cart) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            Cart managedCart = em.merge(cart); // Tái kết nối đối tượng đã tách
            em.remove(managedCart); // Xóa đối tượng đã tái kết nối
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
}
