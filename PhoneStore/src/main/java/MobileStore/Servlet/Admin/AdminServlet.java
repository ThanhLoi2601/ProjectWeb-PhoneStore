/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MobileStore.Servlet.Admin;

import MobileStore.DB.AccountDB;
import MobileStore.DB.DiscountDB;
import MobileStore.DB.ProductDB;
import MobileStore.data.Account;
import MobileStore.data.Discount;
import MobileStore.data.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class AdminServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sidebar_list = request.getParameter("sidebar-list");
        HttpSession session = request.getSession();
        session.setAttribute("sidebar-list", sidebar_list);
        System.out.println(session.getAttribute("sidebar-list"));
        if(sidebar_list.equals("Promotion")){
            List<Discount> discounts = DiscountDB.selectAllDiscount();
            session.setAttribute("discounts", discounts);
        }else if (sidebar_list.equals("Products")){
            List<Product> products = ProductDB.selectAllProduct();
            session.setAttribute("products", products);
        }else if (sidebar_list.equals("Account")){
            List<Account> accounts = AccountDB.selectAllAccount();
            session.setAttribute("accounts", accounts);
        }
        String url = "/Admin.jsp";
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
