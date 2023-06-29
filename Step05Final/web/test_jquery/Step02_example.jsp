<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-29
  Time: 오전 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test_jquery/Step02_example.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
<h1>ajax 요청을 통해서 받아온 데이터 사용하기</h1>
<p>페이지 전환 없이 서버에 요청하는 것을 ajax 라고 생각하면 된다.</p>
<div class="container">
    <br>
    <table>
        <thead>
        <tr>
            <th>번호</th>
            <th>작성자</th>
            <th>제목</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
    <nav>
        <ul class="pagination">

        </ul>
    </nav>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script>
    // 페이지 로딩 시점에 1 페이지의 내용 요청하기
    $.ajax({
        url    : "../cafe/json_list2.jsp",
        method : "get",
        data   : {pageNum: 1},
        success: function (data) {
            // 글 목록
            const list = data.list;
            list.forEach(function (item) {
                // item 에는 글 하나의 정보가 들어있다.
                const td1 = $("<td>").text(item.num);
                const td2 = $("<td>").text(item.writer);
                const td3 = $("<td>").text(item.title);
                $("<tr>").append(td1).append(td2).append(td3).appendTo("tbody");
                // 아이디값 부여해서 추가해도 됨
            });

            if (data.startPageNum !== 1) {
                const a = $("<a>").addClass("page-link").attr("href", `javascript:request(\${data.startPageNum})`).text("Prev");
                const li = $("<li>").addClass("page-item").append(a).appendTo(".pagination")
            }
            // 반복문 돌면서 페이지 출력하기
            for (let i = data.startPageNum; i <= data.endPageNum; i++) {
                const a = $("<a>").addClass("page-link").attr("href", "javascript:").text(i);
                if (i === data.pageNum) {
                    a.addClass("active");
                }
                const li = $("<li>").addClass("page-item").append(a).appendTo(".pagination")
            }
            if (data.endPageNum < data.totalPageCount) {
                const a = $("<a>").addClass("page-link").attr("href", "javascript:").text("Next");
                const li = $("<li>").addClass("page-item").append(a).appendTo(".pagination")
            }
        }
    })

    function request(pageNum) {

    }
</script>
</body>
</html>
