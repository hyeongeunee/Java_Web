<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-08
  Time: 오후 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //아이디
  String id = request.getParameter("id");
  //비밀번호
  String pwd = request.getParameter("pwd");
  //직업
  String job = request.getParameter("job");
  //성별
  String gender = request.getParameter("gender");
  //취미
  String[] hobby = request.getParameterValues("hobby");
  String hobbyResult = "";
  if (hobby != null){
    //반복문 돌면서
    for (int i = 0; i < hobby.length; i++){
      //i번째 방에 있는 선택된 취미를 불러온다.
      String tmp = hobby[i];
      hobbyResult += tmp;
      if (i != hobby.length-1) hobbyResult += "/";
    }
  }
  //문자열에서 특정문자("/")로 구분해서 String[] 을 얻어내기
  String [] result = hobbyResult.split("/");

  //문자열에 특정 문자가 포함되어 있는지 여부
  boolean isContain = hobbyResult.contains("xxx");

  // null 이면 체크를 안한 것이고 null 이 아니면 체크를 한 것이다.
  String allEmail = request.getParameter("allowEmail");
  String allMessage = request.getParameter("allowMessage");
  /*
     textarea 에 입력한 문자열은 개행, tab, 공백기호가 모두 포함되어 있다.
     해당 문자열을 DB 에 저장했다가 다시 불러와서 textarea 에 출력하고 싶으면
     textarea 의 innerText 에 출력하면 된다.
   */
  String comment = request.getParameter("comment");
%>
<html>
<head>
  <title>test/signup.jsp</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <h1>회원가입 결과</h1>
    <p>회원님의 정보를 성공적으로 저장했습니다.</p>
    <form action="signup.jsp" method="post">
      <div class="form-floating mb-2">
        <!-- request.getParameter("id") 값 뽑으려면 name 써야함. -->
        <input class="form-control" value="<%=id%>" type="text" name="id" id="id" placeholder="아이디 입력">
        <label for="id">아이디</label>
      </div>
      <div class="form-floating mb-2">
        <input class="form-control" type="password" value="<%=pwd%>" name="pwd" id="pwd" placeholder="비밀번호 입력">
        <label for="pwd">비밀번호</label>
      </div>
      <select id="job" class="form-select mb-2" name="job">
        <!-- request.getParameter("job") 했을 때 value 값으로 출력. value 안쓰면 innerText 로 출력 -->
        <option value="">직업 선택</option>
        <option value="programmer"<%= job.equals("programmer") ? "selected" : ""%>>프로그래머</option>
        <option value="doctor" <%= job.equals("doctor") ? "selected" : ""%>>의사</option>
      </select>
      <fieldset>
        <legend>성별체크</legend>
        <div class="form-check form-check-inline">
          <input class="form-check-input" value="man" type="radio" id="one" name="gender" <%=gender.equals("man") ? "checked" : ""%>>
          <label class="form-check-label" for="one">남자</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" value="woman" type="radio" id="two" name="gender" <%=!gender.equals("man") ? "checked" : ""%>>
          <label class="form-check-label" for="two">여자</label>
        </div>
      </fieldset>
      <fieldset>
        <legend>취미 체크</legend>
        <!-- request.getParameterValues("hobby") 로 값을 들고 와야함 >> String [] type 임 -->
        <div class="form-check">
          <input type="checkbox" name="hobby" class="form-check-input" id="piano" value="piano" <%= hobbyResult.contains("piano") ? "checked" : ""%>>
          <label for="piano" class="form-check-label">피아노</label>
        </div>
        <div class="form-check">
          <input type="checkbox" name="hobby" class="form-check-input" id="game" value="game" <%= hobbyResult.contains("game") ? "checked" : ""%>>
          <label for="game" class="form-check-label">게임</label>
        </div>
        <div class="form-check">
          <input type="checkbox" name="hobby" class="form-check-input" id="etc" value="etc" <%= hobbyResult.contains("etc") ? "checked" : ""%>>
          <label for="etc" class="form-check-label">기타</label>
        </div>
      </fieldset>
      <div>
        <label for="comment" class="form-label">하고 싶은말</label>
        <textarea name="comment" id="comment" rows="10" class="form-control" ><%=comment%></textarea>
      </div>
      <fieldset>
        <legend>개인정보 활용 동의</legend>
        <div class="form-check form-switch">
          <input class="form-check-input is-valid" type="checkbox" id="allowAll">
          <label class="form-check-label" for="allowAll">전체 동의</label>
        </div>
        <div class="form-check form-switch">
          <input class="form-check-input allow" type="checkbox" id="allowEmail" name="allowEmail" value="email" <%=allEmail != null ? "checked" : ""%>>
          <label class="form-check-label" for="allowEmail">이메일 수신여부</label>
        </div>
        <div class="form-check form-switch">
          <input class="form-check-input allow" type="checkbox" id="allowMessage" name="allowMessage"
                 value="message" <%=allMessage != null ? "checked" : ""%>>
          <label class="form-check-label" for="allowMessage">광고성 문자 수신여부</label>
        </div>
      </fieldset>
      <button class="btn btn-outline-primary" type="submit">확인</button>
    </form>
  </div>
  <script>
    document.querySelector("#allowAll").addEventListener("change", (e) => {
      //모두 동의 체크 여부를 알아낸다.
      const isChecked = e.target.checked;
      //클래스가 allow 인 모든 요소의 참조값을 배열로 얻어내기
      const allows = document.querySelectorAll(".allow");

      //반복문 돌면서
      // for (let i = 0; i < allows.length; i++) {
      //     //모든 checkbox 의 check 상태를 바꿔주기
      //     allows[i].checked = isChecked;
      // }

      allows.forEach((item) => {
        item.checked = isChecked;
      });
    });
  </script>
</body>
</html>
