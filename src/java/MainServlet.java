/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sennis
 */
@WebServlet(name = "mainServlet", urlPatterns = {"/mainServlet"})
public class MainServlet extends HttpServlet {

    private static final String OUTPUT_PAGE = "outputForm.jsp";
    public static final double PI = 3.14159265359;

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        DataProcessor dp = new DataProcessor();
        double area1;

        if (request.getParameter("rectangleSubmit") != null) {

            String w = request.getParameter("width1");
            String l = request.getParameter("length1");

            area1 = dp.calculateRectangleArea(l, w);
            request.setAttribute("area1", area1);
//            double area1;
//
//            area1 = Double.parseDouble(w) * Double.parseDouble(l);
//
//            request.setAttribute("area1", area1);

        }

        if (request.getParameter("circleSubmit") != null) {

            String r = request.getParameter("radius");

            double area2;

            area2 = PI * (Double.parseDouble(r) * Double.parseDouble(r));

            request.setAttribute("area2", area2);

        }

        if (request.getParameter("triangleSubmit1") != null) {

            String leg1 = request.getParameter("leg1");
            String leg2 = request.getParameter("leg2");

            double c;

            c = (Double.parseDouble(leg1) * Double.parseDouble(leg1))
                    + (Double.parseDouble(leg2) * Double.parseDouble(leg2));
            c = Math.sqrt(c);

            request.setAttribute("c", c);

        }

        if (request.getParameter("triangleSubmit2") != null) {

            String leg2 = request.getParameter("leg2");
            String hypotenuse = request.getParameter("hypotenuse");

            double b;

            b = (Double.parseDouble(hypotenuse) * Double.parseDouble(hypotenuse))
                    - (Double.parseDouble(leg2) * Double.parseDouble(leg2));
            b = Math.sqrt(b);

            request.setAttribute("b", b);

        }

        RequestDispatcher view =
                request.getRequestDispatcher(OUTPUT_PAGE);
        view.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
