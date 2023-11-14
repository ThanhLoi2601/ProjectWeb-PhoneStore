/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MobileStore.Servlet.Admin;

import MobileStore.DB.ProductDB;
import MobileStore.data.Product;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class AdminProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/Admin.jsp";
        HttpSession session = request.getSession();
        String ManageProducts = request.getParameter("ManageProducts");
        System.out.println(ManageProducts);
        if (ManageProducts != null && ManageProducts.equals("remove")) {
            request.setAttribute("ManageProducts", ManageProducts);
            String IDUpdate = request.getParameter("productID");
            Product product = ProductDB.selectIDProduct(IDUpdate);
            System.out.println(product.getName());
            ProductDB.delete(product);
            List<Product> products = ProductDB.selectAllProduct();
            session.setAttribute("products", products);
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/Admin.jsp";
        HttpSession session = request.getSession();
        String ManageProducts = request.getParameter("ManageProducts");
        if (ManageProducts != null) {
            request.setAttribute("ManageProducts", ManageProducts);
            if (ManageProducts.equals("update") || ManageProducts.equals("add")) {
                String IDUpdate = request.getParameter("productID");
                String name = request.getParameter("ProductName");
                String type = request.getParameter("ProductType");
                String status_str = request.getParameter("status");
                Boolean status = false;
                if (status_str.equals("active"))
                    status = true;
                String sales = request.getParameter("sales");
                String stock = request.getParameter("stock");
                String price = request.getParameter("price");
                String information = request.getParameter("information");
                
                Product product;
                System.out.println(IDUpdate + " " + name + " " + type + " " + status + " " + price);

                if (ManageProducts.equals("update")) {
                    product = new Product(Long.valueOf(IDUpdate), name, status, type, Integer.parseInt(sales), Integer.parseInt(stock), information, Float.valueOf(price), "img/Samsung/Samsung-Galaxy-A53.jpg");
                    ProductDB.update(product);
                } else {
                    try {
                        product = new Product(name, status, type, Integer.parseInt(sales), Integer.parseInt(stock), information, Float.valueOf(price), "img/Samsung/Samsung-Galaxy-A53.jpg");
                        ProductDB.insert(product);
                    } catch (SQLException ex) {
                        Logger.getLogger(AdminDiscountServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
            List<Product> products = ProductDB.selectAllProduct();
            session.setAttribute("products", products);
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
