<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-30
  Time: 오후 2:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //DB 에서 읽어온 더보기 메세지 목록이라고 가정하자
  List<String> list = new ArrayList<>();
  list.add("어쩌구");
  list.add("저쩌구");
  list.add("이러쿵");
%>
<%for(String tmp:list){%>
  <li><%=tmp%></li>
<%}%>