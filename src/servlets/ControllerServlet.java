package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ControllerServlet")
public class ControllerServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (!req.getParameter("enterX").equals("") && !req.getParameter("enterR").equals("")) {
            Double x = Double.parseDouble(req.getParameter("enterX"));
             Double y = Double.parseDouble(req.getParameter("Y"));
            Double r = Double.parseDouble(req.getParameter("enterR"));
            System.out.println(y);
            if(validate(x, y, r))
                req.getServletContext().getRequestDispatcher("/AreaCheckServlet").forward(req, resp);
        } else {
            req.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // req.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);

    }

    public boolean validate(double x, double y, double r) {
        if ((x < -3 || x > 5) || (y < -3 || y > 5) || (r < 2 || r > 5))
            return false;
        else return true;
    }

}
