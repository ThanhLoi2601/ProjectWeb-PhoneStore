/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MobileStore.DB;

import MobileStore.data.Invoice;
import MobileStore.util.DBUtil;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author DELL
 */
public class InvoiceDB {

    public static List<Invoice> selectAllInvoice() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT i FROM Invoice i ";
        TypedQuery<Invoice> q = em.createQuery(qString, Invoice.class);

        try {
            List<Invoice> lsInvoice = q.getResultList();
            return lsInvoice;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }

    public static void delete(Invoice invoice) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            Invoice managedInvoice = em.merge(invoice); // Tái kết nối đối tượng đã tách
            em.remove(managedInvoice); // Xóa đối tượng đã tái kết nối
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
}