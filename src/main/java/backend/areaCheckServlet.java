package backend;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import backend.point;
import backend.pointBean;
import javax.servlet.http.*;

public class areaCheckServlet extends HttpServlet{
    private pointBean b;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        b = (pointBean) req.getSession().getAttribute("points");
    try {
        float x = Float.parseFloat(req.getParameter("x"));
        float y = Float.parseFloat(req.getParameter("y").trim());
        float r = Float.parseFloat(req.getParameter("r"));

        point p = new point(x, y, r);

        b.addPoint(p);
    } catch (Exception ex) {
        req.getServletContext().getRequestDispatcher("/index.jsp").forward(req, res);
    }

        res.setContentType("text/html; charset=UTF-8");
        req.getServletContext().getRequestDispatcher("/table.jsp").forward(req, res);
}
}
