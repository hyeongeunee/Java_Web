package test.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/send")
public class SendServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String msg = req.getParameter("msg");
        System.out.println("msg: " + msg);

        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=utf-8");
        PrintWriter writer = resp.getWriter();

        writer.println("<!doctype html>");
        writer.println("<html>");
        writer.println("<head>");
        writer.println("<meta charset='utf-8'>");
        writer.println("<title>GET 메세지 전송 결과 페이지</title>");
        writer.println("</head>");
        writer.println("<body>");
        writer.println("<p>메세지 잘 받았어 클라이언트야!</p>");
        writer.println("</body>");
        writer.println("</html>");
        writer.close();
    }
}
