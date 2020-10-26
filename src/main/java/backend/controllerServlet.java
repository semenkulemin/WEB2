package backend;
import java.io.IOException;
import javax.servlet.http.*;
import javax.servlet.ServletException;



public class controllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Integer x = null;
        Float y = null;
        Integer r = null;
        try {
            String x_p = req.getParameter("x");
            if (x != null) x = Integer.parseInt(x_p);
            String y_p = req.getParameter("y");
            if (y != null) y = Float.parseFloat(y_p);
            String r_p = req.getParameter("r");
            if (r != null) r = Integer.parseInt(r_p);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        if (x == null || y == null || r == null){
            req.getServletContext().getRequestDispatcher("/index.jsp").forward(req, res);
        }else{
            req.getServletContext().getRequestDispatcher("/check").forward(req, res);
        }

    }

}
