/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MobileStore.Servlet.Admin;

import MobileStore.DB.DiscountDB;
import MobileStore.data.Discount;
import MobileStore.data.Product;
import MobileStore.data.ProductType;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
public class AdminDiscountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/Admin.jsp";
        HttpSession session = request.getSession();
        String ManageDiscounts = request.getParameter("ManageDiscounts");
        System.out.println(ManageDiscounts);
        if (ManageDiscounts != null && ManageDiscounts.equals("remove")) {
            request.setAttribute("ManageDiscounts", ManageDiscounts);
            String IDUpdate = request.getParameter("discountID");
            Discount discount = DiscountDB.selectIDDiscount(IDUpdate);
            System.out.println(discount.getName());
            DiscountDB.delete(discount);
            List<Discount> discounts = DiscountDB.selectAllDiscount();
            session.setAttribute("discounts", discounts);
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/Admin.jsp";
        HttpSession session = request.getSession();
        String ManageDiscounts = request.getParameter("ManageDiscounts");
        if (ManageDiscounts != null) {
            request.setAttribute("ManageDiscounts", ManageDiscounts);
            if (ManageDiscounts.equals("update") || ManageDiscounts.equals("add")) {
                String IDUpdate = request.getParameter("discountID");
                String name = request.getParameter("DiscountName");
                String dis = request.getParameter("Discount");
                String date_start = request.getParameter("start_date");
                String end_date = request.getParameter("end_date");
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Discount discount = null;
                System.out.println(IDUpdate + " " + name + " " + dis + " " + date_start + " " + end_date);

                if (ManageDiscounts.equals("update")) {
                    try {
                        discount = new Discount(Long.valueOf(IDUpdate), name, Integer.parseInt(dis), dateFormat.parse(date_start), dateFormat.parse(end_date));
                    } catch (ParseException ex) {
                        Logger.getLogger(AdminDiscountServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    DiscountDB.update(discount);
                } else {
                    try {
                        discount = new Discount(name, Integer.parseInt(dis), dateFormat.parse(date_start), dateFormat.parse(end_date));
                        DiscountDB.insert(discount);
                    } catch (SQLException | ParseException ex) {
                        Logger.getLogger(AdminDiscountServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
            List<Discount> discounts = DiscountDB.selectAllDiscount();
            session.setAttribute("discounts", discounts);
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

}
