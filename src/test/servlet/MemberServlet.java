package test.servlet;

import test.dto.MemberDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/member/list")
public class MemberServlet extends HttpServlet {

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
        List<MemberDto> list=new ArrayList<>();
        list.add(new MemberDto(1, "김구라", "노량진"));
        list.add(new MemberDto(2, "해골", "행신동"));
        list.add(new MemberDto(3, "원숭이", "상도동"));
        pw.println("<h1>회원 목록표</h1>");
        pw.println("<table>");
        pw.println("<tr>");
        pw.println("<th>번호</th>");
        pw.println("<th>이름</th>");
        pw.println("<th>주소</th>");
        pw.println("</tr>");
        for (MemberDto member: list) {
            pw.println("<tr>");
            pw.println("<td>"+member.getNum()+"</td>");
            pw.println("<td>"+member.getName()+"</td>");
            pw.println("<td>"+member.getAddr()+"</td>");
            pw.println("</tr>");
        }
        pw.println("</body>");
        pw.println("</html>");
        pw.close();
    }
}
