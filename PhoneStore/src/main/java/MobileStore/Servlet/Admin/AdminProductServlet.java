/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MobileStore.Servlet.Admin;

import MobileStore.data.Product;
import MobileStore.data.ProductType;
import java.io.IOException;
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
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/Admin.jsp";

        String ManageProducts = request.getParameter("ManageProducts");
        if (ManageProducts != null) {
            request.setAttribute("ManageProducts", ManageProducts);
        }

        String StatusProducts = request.getParameter("StatusProducts");
        if (StatusProducts != null) {
            request.setAttribute("StatusProducts", StatusProducts);
            Product addproduct = null;
            String name = request.getParameter("ProductName");
            String type = request.getParameter("ProductType");
            String status = request.getParameter("StatusProducts");
            String sales = request.getParameter("sales");
            String stock = request.getParameter("stock");
            String price = request.getParameter("price");
            if (name != null || type != null || sales != null || stock != null || price != null) {
                addproduct = new Product(name, status != null && status.equals("active"), new ProductType(type), Integer.parseInt(sales), Integer.parseInt(stock), name, Float.valueOf(price));
            }
            HttpSession session = request.getSession();
            session.setAttribute("addproduct", addproduct);
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
