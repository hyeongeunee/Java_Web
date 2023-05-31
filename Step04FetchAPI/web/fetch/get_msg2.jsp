<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-30
  Time: 오후 2:43
  To change this template use File | Settings | File Templates.
--%>
<%--Json을 쓸 때는 text/html 말고 application/json--%>
<%@ page contentType="application/json; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%

  //DB 에서 읽어온 더보기 메세지 목록이라고 가정하자
  List<String> list = new ArrayList<>();
  list.add("어쩌구");
  list.add("저쩌구");
  list.add("이러쿵");
%>
[
<%for(int i = 0; i < list.size(); i++){%>
  "<%=list.get(i) %>" <%if(i != list.size()-1) {%>,<%} %> <%-- <%=if (i!=list.size()-1) {%>,<%} 이렇게 쓸 수도 있음--%>
<%}%>
]
