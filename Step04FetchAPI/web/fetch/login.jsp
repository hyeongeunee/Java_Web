<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-30
  Time: 오후 4:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("utf-8");
  String id = request.getParameter("id");
  String pwd = request.getParameter("pwd");
  //아이디 비밀번호가 유효한지 여부
  boolean isValid = false;
  //아이디는 gura 비밀번호는 1234 가 유효한 정보라고 가정하자
  if(id.equals("gura") && pwd.equals("1234")){
    isValid = true;
  }
%>
{"isSuccess":<%=isValid%>}
