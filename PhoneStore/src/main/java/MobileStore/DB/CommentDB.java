/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MobileStore.DB;

import MobileStore.data.Comment;
import MobileStore.data.Product;
import MobileStore.util.DBUtil;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author DELL
 */
public class CommentDB {

    public static List<Comment> selectComment(String id_product) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT c FROM Comment c "
                + "WHERE c.product.productID = :id";
        TypedQuery<Comment> q = em.createQuery(qString, Comment.class);
        q.setParameter("id", Long.valueOf(id_product));
        try {
            List<Comment> lsComment = q.getResultList();
            return lsComment;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }
}
