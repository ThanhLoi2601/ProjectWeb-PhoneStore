/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MobileStore.DB;

import MobileStore.data.HistoryProduct;
import MobileStore.data.Product;
import MobileStore.data.User;
import MobileStore.util.DBUtil;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

/**
 *
 * @author DELL
 */
public class HistoryProductDB {

    public static void insert(HistoryProduct histProduct) throws SQLException {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(histProduct);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static List<HistoryProduct> selectHistoryProduct(String id_user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT hp FROM HistoryProduct hp "
                + "WHERE hp.customer.id = :id";
        TypedQuery<HistoryProduct> q = em.createQuery(qString, HistoryProduct.class);
        q.setParameter("id", Long.valueOf(id_user));
        try {
            List<HistoryProduct> lsHistoryProduct = q.getResultList();
            return lsHistoryProduct;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }

    public static void deleteByProduct_User(Product product, User user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();

        try {

            // Check if the product exists in HistoryProduct
            if (product != null && user != null) {
                // Construct a query to delete HistoryProduct entries related to the product
                Query deleteQuery = em.createQuery("DELETE FROM HistoryProduct hp WHERE hp.product = :product AND hp.customer = :user");
                deleteQuery.setParameter("product", product);
                deleteQuery.setParameter("user", user);

                // Execute the delete query
                int deletedCount = deleteQuery.executeUpdate();

                // Commit the transaction if deletion was successful
                if (deletedCount > 0) {
                    trans.commit();
                } else {
                    System.out.println("No HistoryProduct found for the specified product.");
                    trans.rollback();
                }
            } else {
                trans.rollback();
            }
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
}
