/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MobileStore.Servlet.Admin;

import MobileStore.DB.ProductDB;
import MobileStore.data.Product;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author DELL
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024 * 50)
public class AdminProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String url = "/Admin.jsp";
        HttpSession session = request.getSession();
        String ManageProducts = request.getParameter("ManageProducts");
        System.out.println(ManageProducts);
        if (ManageProducts != null && ManageProducts.equals("remove")) {
            request.setAttribute("ManageProducts", ManageProducts);
            String IDUpdate = request.getParameter("productID");
            Product product = ProductDB.selectIDProduct(IDUpdate);
            System.out.println(product.getName());
            File fileIMG = new File(product.getImage());
            if (fileIMG.delete()) {
                System.out.println(fileIMG.getName() + " xoa thanh cong ");
            }
            ProductDB.delete(product);
            List<Product> products = ProductDB.selectAllProduct();
            session.setAttribute("products", products);
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

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
                if (status_str.equals("active")) {
                    status = true;
                }
                String sales = request.getParameter("sales");
                String stock = request.getParameter("stock");
                String price = request.getParameter("price");
                String information = request.getParameter("information");

                Part part = request.getPart("image");
                String realPath = request.getServletContext().getRealPath("/img");
                String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
                
                Product product;
                System.out.println(IDUpdate + " " + name + " " + type + " " + status + " " + price);
                
                if (!Files.exists(Path.of(realPath))) {
                    Files.createDirectories(Path.of(realPath));
                }
                part.write(realPath + "/" + filename);
                if (ManageProducts.equals("update")) {
                    product = new Product(Long.valueOf(IDUpdate), name, status, type, Integer.parseInt(sales), Integer.parseInt(stock), information, Float.valueOf(price), "img/" + filename);
                    ProductDB.update(product);
                } else {
                    try {
                        product = new Product(name, status, type, Integer.parseInt(sales), Integer.parseInt(stock), information, Float.valueOf(price), "img/" + filename);
                        ProductDB.insert(product);
                    } catch (SQLException ex) {
                        Logger.getLogger(AdminDiscountServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
            List<Product> products = ProductDB.selectAllProduct();
            session.setAttribute("products", products);
            System.out.println(request.getParameter("image"));
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
