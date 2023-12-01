/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MobileStore.Servlet.Customer;

import MobileStore.DB.CartDB;
import MobileStore.DB.LineItemDB;
import MobileStore.DB.ProductDB;
import MobileStore.data.Cart;
import MobileStore.data.Invoice;
import MobileStore.data.LineItem;
import MobileStore.data.Product;
import MobileStore.data.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class CustomerCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String url = "/customer_cart.jsp";
        HttpSession session = request.getSession();
        String change_cart = request.getParameter("change_cart");
        Cart cart = (Cart) session.getAttribute("cart");
        if (change_cart.equals("remove")) {
            String lineItemID = request.getParameter("lineItemID");
            List<LineItem> lsln = cart.getLslineItems();
            LineItem ln_save = null;
            for (LineItem ln : lsln) {
                if (ln.getId().equals(Long.valueOf(lineItemID))) {
                    lsln.remove(ln);
                    ln_save = ln;
                    break;
                }
            }
            cart.setLslineItems(lsln);
            cart.calculateTotalPrice();
            CartDB.update(cart);
            LineItemDB.delete(ln_save);
            session.setAttribute("cart", cart);
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String url = "/customer_cart.jsp";
        HttpSession session = request.getSession();
        String change_cart = request.getParameter("change_cart");
        Cart cart = (Cart) session.getAttribute("cart");
        LineItem ln_save = null;
        //User user = (User)session.getAttribute("user");
        if (change_cart.equals("add")) {
            String productCode = request.getParameter("productCode");
            Product product = ProductDB.selectIDProduct(productCode);
            boolean test_add = false;
            List<LineItem> lsln = cart.getLslineItems();
            for (LineItem ln : lsln) {
                if (Objects.equals(ln.getItem().getProductID(), product.getProductID())) {
                    ln.setQuanlity(ln.getQuanlity() + 1);
                    test_add = true;
                    break;
                }
            }
            if (test_add == false) {
                lsln.add(new LineItem(product, 1));
            }
            cart.setLslineItems(lsln);
        } else if (change_cart.equals("update")) {
            String lineItemID = request.getParameter("lineItemID");
            System.out.println("update"+ lineItemID);
            List<LineItem> lsln = cart.getLslineItems();
            String quanlity = request.getParameter("quanlity");

            if (Integer.parseInt(quanlity) != 0) {
                for (LineItem ln : lsln) {
                    if (Objects.equals(ln.getId(), Long.valueOf(lineItemID))) {
                        ln.setQuanlity(Integer.parseInt(quanlity));
                        break;
                    }
                }
                cart.setLslineItems(lsln);
            } else {
                for (LineItem ln : lsln) {
                    if (Objects.equals(ln.getId(), Long.valueOf(lineItemID))) {
                        lsln.remove(ln);
                        ln_save = ln;
                        break;
                    }
                }
                cart.setLslineItems(lsln);
            }
        }

        cart.calculateTotalPrice();
        CartDB.update(cart);
        if (ln_save != null) {
            LineItemDB.delete(ln_save);
        }
        session.setAttribute("cart", cart);

        response.sendRedirect("/PhoneStore" + url);
    }

}
