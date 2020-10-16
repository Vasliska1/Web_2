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

        String x = (req.getParameter("enterX"));
        String y = req.getParameter("Y");
        String r = req.getParameter("enterR");

        if (validate(x, y, r))
            req.getServletContext().getRequestDispatcher("/AreaCheckServlet").forward(req, resp);
        else {
            req.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    public boolean validate(String x, String y, String r) {
        System.out.println(x);
        if (x.matches("((-|\\\\+)?[0-9]+(\\\\.[0-9]+)?)+") && y.matches("((-|\\\\+)?[0-9]+(\\\\.[0-9]+)?)+") && r.matches("((-|\\\\+)?[0-9]+(\\\\.[0-9]+)?)+")) {
            return !((Double.parseDouble(x) <= -3 || Double.parseDouble(x) >= 5) || (Double.parseDouble(y) < -3 || Double.parseDouble(y) > 5) || (Double.parseDouble(r) < 2 || Double.parseDouble(r) > 5));
        } else return false;
    }

}
