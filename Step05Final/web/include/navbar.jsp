<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar bg-body navbar-expand-md" data-bs-theme="dark">
    <%--    container-fluid > 한 줄 다 쓰는거--%>
    <%--
           어두운 색 계열의 navbar 배경색이면 data-bs-theme="dark"
           navbar-expand-md 는 md 영역 이상이면 navbar-collapse 가 펼쳐지도록 한다.
    --%>
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">
            <img src="https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo.svg" alt="Logo" width="30"
                 height="24" class="d-inline-block align-text-top">
            Acorn
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarText">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link ${param.current eq 'file' ? 'active':''}" href="${pageContext.request.contextPath}/file/list.jsp">자료실</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.current eq 'cafe' ? 'active':''}" href="${pageContext.request.contextPath}/cafe/list.jsp">Cafe</a>
                </li>
            </ul>
            <div class="navbar-nav">
                <c:choose>
                    <c:when test="${not empty id}">
                        <strong><a class="nav-link"
                                   href="${pageContext.request.contextPath}/users/private/info.jsp">${id}</a></strong>
                        <a class="nav-link" href="${pageContext.request.contextPath}/users/logout.jsp">로그아웃</a>
                    </c:when>
                    <c:otherwise>
                        <a class="nav-link" href="${pageContext.request.contextPath}/users/loginform.jsp">로그인</a>
                        <a class="nav-link" href="${pageContext.request.contextPath}/users/signup_form.jsp">회원가입</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</nav>