<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<nav class="navbar bg-body nav-bar-expand-md">
  <%--    container-fluid > 한 줄 다 쓰는거--%>
  <%--
         어두운 색 계열의 navbar 배경색이면 data-bs-theme="dark"
         navbar-expand-md 는 md 영역 이상이면 navbar-collapse 가 펼쳐지도록 한다.
  --%>
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      Acorn
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText">
      <span class="navbar-toggler-icon"></span>
    </button>
    <%
        //어느 페이지에 포함되었는지 정보를 얻어오기
        String current = request.getParameter("current"); // "index" or "member" or "guest"
    %>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav">
        <li class="nav-item">
          <%-- 나브바 링크에 active 추가하면 밝아짐 >> 본인이 어떤 페이지에 include 되있는지 정보를 받아서 active 해야함 --%>
          <%--          --%>
          <a class="nav-link" href="member/list.jsp">회원목록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="guest/list.jsp">방명록</a>
        </li>
      </ul>
    </div>
  </div>
</nav>