<%@ page import="test.file.FileDao" %>
<%@ page import="java.io.File" %>
<%@ page import="test.file.FileDto" %>
<%@ page import="test.cafe.dao.CafeDao" %>
<%@ page import="test.cafe.dto.CafeDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-09
  Time: 오후 6:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //1. GET 방식 파라미터로 전달되는 삭제할 파일의 글번호 읽어오기
    int num = Integer.parseInt(request.getParameter("num"));
    //2. DB 에서 삭제하기
    boolean isSuccess = CafeDao.getInstance().delete(num);
    //3. 응답하기
    String cPath = request.getContextPath();
    response.sendRedirect(cPath + "/cafe/list.jsp");
%>
