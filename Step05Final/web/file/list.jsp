<%@ page import="test.file.FileDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="test.file.FileDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-01
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  FileDao dao = FileDao.getInstance();
  //파일 목록을 얻어온다.
  List<FileDto> list = dao.getList();
  //로그인된 아이디( 로그인이 되어있지 않으면 null 이다.)
  String id = (String)session.getAttribute("id");
%>
<html>
<head>
    <title>file/list.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
    <style>
        .page_wrap {
            text-align:center;
            font-size:0;
            margin-left: -3.5rem;
        }
        .page_nation {
            display:inline-block;
        }
        .page_nation .none {
            display:none;
        }
        .page_nation a {
            display:block;
            margin:0 3px;
            float:left;
            border:1px solid #e6e6e6;
            width:28px;
            height:28px;
            line-height:28px;
            text-align:center;
            background-color:#fff;
            font-size:13px;
            color:#999999;
            text-decoration:none;
        }
        .page_nation .arrow {
            border:1px solid #ccc;
        }

        .page_nation .prev {
            background:#f8f8f8 no-repeat center center;
            margin-right:7px;
        }
        .page_nation .next {
            background:#f8f8f8 no-repeat center center;
            margin-left:7px;
        }

        .page_nation a.active {
            background-color:#42454c;
            color:#fff;
            border:1px solid #42454c;
        }
    </style>
</head>
<body>
  <div class="container">
    <a href="private/upload_form.jsp">업로드 하기</a>
    <br>
    <a href="private/upload_form2.jsp">ajax 업로드 하기</a>
    <h1>자료실 목록입니다.</h1>
    <table>
      <thead>
        <tr>
          <th>번호</th>
          <th>작성자</th>
          <th>제목</th>
          <th>파일명</th>
          <th>등록일</th>
          <th>삭제</th>
        </tr>
      </thead>
      <tbody>
        <%for(FileDto tmp : list) {%>
          <tr>
            <td><%=tmp.getNum()%></td>
            <td><%=tmp.getWriter()%></td>
            <td><%=tmp.getTitle()%></td>
            <td><a href="download.jsp?num=<%=tmp.getNum()%>"><%=tmp.getOrgFileName()%></a></td>
            <td><%=tmp.getRegdate()%></td>
            <td>
              <%-- 글작성자와 로그인된 아이디가 같을 때만 삭제 링크 출력하기--%>
              <%if(tmp.getWriter().equals(id)){%>
              <a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a>
              <%}%>
                <%-- tmp.getWriter()
                                  String id = (String)session.getAttribute("id") --%>
            </td>
          </tr>
          <%-- 파일 다운 받을 때 (원본 + 저장된)파일명, 파일 사이즈를 알아야 정확하게 파일이 다운됨 ㅇㅇ --%>
        <%}%>
      </tbody>
    </table>
      <div class="page_wrap mt-5">
          <div class="page_nation">
              <a class="arrow prev" href="#"> ◀ </a>
              <a href="list.jsp?pageNum=1" class="active" id="pageNum1">1</a>
              <%for(int i = 2; i <= 5; i++){%>
                <a class="page-link" href="list.jsp?pageNum=<%=i%>" id="pageNum<%=i%>"><%=i%></a>
              <%}%>
              <a class="arrow next" href="#"> ▶ </a>
          </div>
      </div>
      <script>
        // document.querySelector(".page_nation").addEventListener("click", ()=>{
        //     document.querySelector("#pageNum").setAttribute('class', 'active');
        // })
      </script>
  </div>
</body>
</html>
