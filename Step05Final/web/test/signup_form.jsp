<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-08
  Time: 오후 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test/signup_form.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <h1>다양한 form 디자인</h1>
  <form action="signup.jsp" method="post">
    <div class="form-floating mb-2">
      <!-- request.getParameter("id") 값 뽑으려면 name 써야함. -->
      <input class="form-control" type="text" name="id" id="id" placeholder="아이디 입력">
      <label for="id">아이디</label>
    </div>
    <div class="form-floating mb-2">
      <input class="form-control" type="password" name="pwd" id="pwd" placeholder="비밀번호 입력">
      <label for="pwd">비밀번호</label>
    </div>
    <select id="job" class="form-select mb-2" name="job">
      <!-- request.getParameter("job") 했을 때 value 값으로 출력. value 안쓰면 innerText로 출력 -->
      <option value="">직업 선택</option>
      <option value="programmer">프로그래머</option>
      <option value="doctor">의사</option>
    </select>
    <fieldset>
      <legend>성별체크</legend>
      <div class="form-check form-check-inline">
        <input class="form-check-input" value="man" type="radio" id="one" name="gender">
        <label class="form-check-label" for="one">남자</label>
      </div>
      <div class="form-check form-check-inline">
        <input class="form-check-input" value="woman" type="radio" id="two" name="gender">
        <label class="form-check-label" for="two">여자</label>
      </div>
    </fieldset>
    <fieldset>
      <legend>취미 체크</legend>
      <!-- request.getParameterValues("hobby") 로 값을 들고 와야함 >> String [] type임 -->
      <div class="form-check">
        <input type="checkbox" name="hobby" class="form-check-input" id="piano" value="piano">
        <label for="piano" class="form-check-label">피아노</label>
      </div>
      <div class="form-check">
        <input type="checkbox" name="hobby" class="form-check-input" id="game" value="game">
        <label for="game" class="form-check-label">게임</label>
      </div>
      <div class="form-check">
        <input type="checkbox" name="hobby" class="form-check-input" id="etc" value="etc">
        <label for="etc" class="form-check-label">기타</label>
      </div>
    </fieldset>
    <div>
      <label for="comment" class="form-label">하고 싶은말</label>
      <textarea name="comment" id="comment" rows="10" class="form-control"></textarea>
    </div>
    <fieldset>
      <legend>개인정보 활용 동의</legend>
      <div class="form-check form-switch">
        <input class="form-check-input is-valid" type="checkbox" id="allowAll">
        <label class="form-check-label" for="allowAll">전체 동의</label>
      </div>
      <div class="form-check form-switch">
        <input class="form-check-input allow" type="checkbox" id="allowEmail" name="allowEmail" value="email">
        <label class="form-check-label" for="allowEmail">이메일 수신여부</label>
      </div>
      <div class="form-check form-switch">
        <input class="form-check-input allow" type="checkbox" id="allowMessage" name="allowMessage"
               value="message">
        <label class="form-check-label" for="allowMessage">광고성 문자 수신여부</label>
      </div>
    </fieldset>
    <button class="btn btn-outline-primary" type="submit">가입</button>
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
    //     //모든 checkbox의 check 상태를 바꿔주기
    //     allows[i].checked = isChecked;
    // }

    allows.forEach((item) => {
      item.checked = isChecked;
    });
  });
</script>
</body>

</html>
