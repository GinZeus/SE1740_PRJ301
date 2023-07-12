/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.ProductDAL;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Brand;
import model.Category;
import model.Product;

/**
 *
 * @author datng
 */
public class ManageProductControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account ac = (Account) session.getAttribute("account");

        if (ac != null) {
            int role_id = ac.getRole();
            if (role_id == 1) {
                response.setContentType("text/html;charset=UTF-8");
                String indexPage = request.getParameter("index");
                if (indexPage == null) {
                    indexPage = "1";
                }
                int index = Integer.parseInt(indexPage);
                ProductDAL p = new ProductDAL();
                ArrayList<Product> products = p.pagingProduct(index);
                request.setAttribute("listAllP", products);
                ArrayList<Category> categories = p.getAllCategory();
                request.setAttribute("listC", categories);
                ArrayList<Brand> brands = p.getAllBrand();
                request.setAttribute("listB", brands);
                int count = p.getTotalProduct();
                int endPage = count / 9;
                if (count % 9 != 0) {
                    endPage++;
                }
                request.setAttribute("tag", index);
                request.setAttribute("endP", endPage);
                request.getRequestDispatcher("manage_product.jsp").forward(request, response);
            } else {
                response.sendRedirect("login.jsp");
            }
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
