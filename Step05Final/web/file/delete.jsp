<%@ page import="test.file.FileDto" %>
<%@ page import="test.file.FileDao" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-07
  Time: 오후 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //삭제할 파일의 번호
    int num = Integer.parseInt(request.getParameter("num"));
    //삭제할 파일의 정보를 DB 에서 읽어오기
    FileDto dto = FileDao.getInstance().getData(num);

    //로그인된 아이디와 글의 작성자가 일치하는지 확인하기
    String id = (String)session.getAttribute("id");
    if(!dto.getWriter().equals(id)){
        //에러 응답하기
        response.sendError(HttpServletResponse.SC_FORBIDDEN, "남의 파일 지우면 혼난다!");
        //메소드를 여기서 끝내기
        return;
    }
    //파일 시스템에서 삭제한다.(webapp/upload 폴더에서 해당 파일을 삭제)
    String path = application.getRealPath("/upload")+File.separator+dto.getSaveFileName();
    //                                                          upload 폴더에 실제로 저장된 파일명

    File f = new File(path);
    //DB 에서 삭제
    FileDao.getInstance().delete(num);
    //응답하기
    String cPath = request.getContextPath();
    response.sendRedirect(cPath+"/file/list.jsp"); //파일 목록보기로 다시 리다일렉트로 이동시킨다.
%>
<html>
<head>
    <title>file/delete.jsp</title>
</head>
<body>

</body>
</html>
