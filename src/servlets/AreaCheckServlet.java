package servlets;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;

@WebServlet(name = "AreaCheckServlet")
public class AreaCheckServlet extends HttpServlet {

    ArrayList historyList;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();

        double x = Double.parseDouble(request.getParameter("enterX"));
        double y = Double.parseDouble(request.getParameter("Y"));
        double r = Double.parseDouble(request.getParameter("enterR"));
        long currentDate = System.nanoTime();

        HashMap<String, Object> results = new HashMap();

        results.put("x", x);
        results.put("y", y);
        results.put("r", r);
        results.put("currentDate", LocalDateTime.now());
        results.put("result", this.check(x, y, r));

        String runTime = String.valueOf((System.nanoTime() - currentDate) / 1000 + " mcs");
        results.put("runTime", runTime);

        if (context.getAttribute("table") == null) {
            historyList = new ArrayList();
        } else {
            historyList = (ArrayList) context.getAttribute("table");
        }

        historyList.add(results);

        context.setAttribute("table", historyList);

        getServletContext().getRequestDispatcher("/response.jsp").forward(request, response);

    }


    public boolean check(double x, double y, double r) {

        if ((x * x + y * y <= r * r && x >= 0 && y >= 0) || (x > -r / 2 && x < 0 && y < 0 && y > -r)
                || (x > 0 && y <= x / 2 - r / 2 && x < r))
            return true;
        else return false;
    }
}


