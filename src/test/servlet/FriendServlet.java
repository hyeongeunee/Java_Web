package test.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/friend/list")
public class FriendServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        //응답 컨텐트 설정
        resp.setContentType("text/html; charset=utf-8");
        //클라이언트에게 문자열을 응답할 수 있는 객체의 참조값 얻어내기
        PrintWriter pw = resp.getWriter();
        pw.println("<!doctype html>");
        pw.println("<html>");
        pw.println("<head>");
        pw.println("<meta Charset='utf-8'>");
        pw.println("<title></title>");
        pw.println("</head>");
        pw.println("<body>");

        //친구목록 (sample data) 이라고 가정하자
        List<String> names = new ArrayList<>();
        names.add("김구라");
        names.add("해골");
        names.add("원숭이");

        pw.println("<h1> 친구 목록입니다. </h1>");
        pw.println("<ul>");

        for (String name : names) {
            pw.println("<li>" + name + "</li>");
        };

        pw.println("</ul>");
        pw.println("</body>");
        pw.println("</html>");
        pw.close();
    }
}
