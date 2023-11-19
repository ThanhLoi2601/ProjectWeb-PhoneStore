/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package MobileStore.Servlet.Admin;

import MobileStore.DB.InvoiceDB;
import MobileStore.data.Invoice;
import MobileStore.util.MailUtilGmail;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class AdminInvoiceServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String url = "/Admin.jsp";
        String ManageInvoices = request.getParameter("ManageInvoices");
        if (ManageInvoices != null && ManageInvoices.equals("sent")) {
            // send email to user
//            String to = account.getUser().getEmail();
//            String from = "nguyenthanhloi260303@gmail.com";
//            String subject = "Notification of deleting your account";
//            String body = "Dear " + account.getUser().getName() + ",\n\n"
//                    + "Your account has been deleted by us. " + "\n"
//                    + "If you need to log in, please register a new account before logging in" + "\n\n"
//                    + "Thank you;\n"
//                    + "Thanh Loi\n"
//                    + "Mobile Store";
//            boolean isBodyHTML = false;
//            try {
//                MailUtilGmail.sendMail(to, from, subject, body, isBodyHTML);
//                String message = "Successful delete account of username: " + account.getUsername() + " !";
//                request.setAttribute("message", message);
//            } catch (MessagingException e) {
//                String errorMessage
//                        = "ERROR: Unable to send email. "
//                        + "Check Tomcat logs for details.<br>"
//                        + "ERROR MESSAGE: " + e.getMessage();
//                request.setAttribute("message", errorMessage);
//                this.log(
//                        "Unable to send email. \n"
//                        + "Here is the email you tried to send: \n"
//                        + "=====================================\n"
//                        + "TO: " + account.getUser().getEmail() + "\n"
//                        + "FROM: " + from + "\n"
//                        + "SUBJECT: " + subject + "\n\n"
//                        + body + "\n\n");
//            }
//            List<Invoice> invoices = InvoiceDB.selectAllInvoice();
//            session.setAttribute("invoices", invoices);
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
