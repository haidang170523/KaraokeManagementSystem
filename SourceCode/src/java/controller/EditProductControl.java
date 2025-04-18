/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.MatHangDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.MatHang;

/**
 *
 * @author PC
 */
@WebServlet(name = "EditProductControl", urlPatterns = {"/edit-product"})
public class EditProductControl extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditProductControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditProductControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        request.getRequestDispatcher("/TrangSuaThongTinMatHang.jsp").forward(request, response);
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
        int maMh = Integer.parseInt(request.getParameter("maMh"));
        String tenMh = request.getParameter("tenMh");
        int soLuong = Integer.parseInt(request.getParameter("soLuong"));
        double giaBan = Double.parseDouble(request.getParameter("giaBan"));
        MatHang mh = new MatHang(maMh, tenMh, soLuong, giaBan);

        MatHangDAO mhDao = new MatHangDAO();
        HttpSession session = request.getSession(true);
        // cap nhat lai mat hang vao listMatHang trong session
        ArrayList<MatHang> listMatHang = (ArrayList<MatHang>) session.getAttribute("listMatHang");
        boolean check = true;
        for (int i = 0; i < listMatHang.size(); i++) {
            if (listMatHang.get(i).getTen().equals(tenMh)) {
                check = false;
                break;
            }
        }
        if (check) {
            for (int i = 0; i < listMatHang.size(); i++) {
                if (listMatHang.get(i).getId() == maMh) {
                    listMatHang.set(i, mh); // Thay thế phần tử tại vị trí i
                    session.setAttribute("listMatHang", listMatHang);
                    break;
                }
            }
            if (mhDao.capNhatThongTinMatHang(mh)) {
                session.setAttribute("editSuccess", "true");
            } else {
                session.setAttribute("editFail", "true");
            }
        } else {
            session.setAttribute("error", "true");
        }
        response.sendRedirect("/KaraokeRestaurant/edit-product?id=" + maMh);

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
