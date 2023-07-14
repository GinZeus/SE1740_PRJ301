/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAL.ProductDAL;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author datng
 */
public class ProcessControl extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDAL p = new ProductDAL();
        ArrayList<Product> products = p.getAllProducts();
        request.setAttribute("listAllP", products);
        Cookie[] arr=request.getCookies();
        String txt="";
        HttpSession session = request.getSession();
        Account acc =(Account) session.getAttribute("account");
        String user_id="";
        if(acc!=null) {
            user_id= Integer.toString(acc.getId());
        }
        if(arr!=null) {
            for (Cookie o:arr){
                if(o.getName().equals("cart"+user_id)){
                    txt+=o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }
        Cart cart=new Cart(txt, products);
        String num_raw=request.getParameter("num");
        String id_raw=request.getParameter("id");
        int id,num=1;
        try{
            
            id=Integer.parseInt(id_raw);
            Product pro=p.getProductById(id_raw);
            num=Integer.parseInt(num_raw);
            if(num==-1 && (cart.getQuantityById(id)<=1)){
                cart.removeItem(id);
            } else {
                double price=pro.getPrice();
                Item t=new Item(pro, num, price);
                cart.addItem(t);
            }
        }catch(NumberFormatException e){
            
        }
        
        ArrayList<Item> items=cart.getItems();
        txt="";
        if(items.size()>0) {
            txt=items.get(0).getProduct().getId()+":"+items.get(0).getQuantity();
            for (int i=1; i < items.size(); i++) {
                txt+="-"+items.get(i).getProduct().getId()+":"+items.get(i).getQuantity();
            }
        }
        Cookie c=new Cookie("cart"+user_id,txt);
        c.setMaxAge(2*24*60*60);
        response.addCookie(c);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        ProductDAL p = new ProductDAL();
        ArrayList<Product> products = p.getAllProducts();
        request.setAttribute("listAllP", products);
        Cookie[] arr=request.getCookies();
        String txt="";
        HttpSession session = request.getSession();
        Account acc =(Account) session.getAttribute("account");
        String user_id="";
        if(acc!=null) {
            user_id= Integer.toString(acc.getId());
        }
        if(arr!=null) {
            for (Cookie o:arr){
                if(o.getName().equals("cart"+user_id)){
                    txt+=o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }
        
        String id=request.getParameter("id");
        String[] ids=txt.split("-");
        //sau out la xau sau khi xoa san pham
        String out="";
        for (int i=0;i<ids.length;i++) {
            String[] s=ids[i].split(":");
            if(!s[0].equals(id)){
                if(out.isEmpty()){
                    out=ids[i];
                } else {
                    out+="-"+ids[i];
                }
            }
        }
        if(!out.isEmpty()){
            Cookie c=new Cookie("cart"+user_id, out);
            c.setMaxAge(2*24*60*60);
            response.addCookie(c);
        }
        Cart cart=new Cart(out, products);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
