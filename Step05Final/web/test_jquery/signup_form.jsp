<%@ page import="test.users.dto.UsersDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-31
  Time: 오후 2:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>test_jquery/signup_form.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mb-2" id="app">
    <h3>회원 가입 폼 입니다.</h3>
    <form action="signup.jsp" method="post" id="signupForm">
        <div class="mb-2">
            <label class="control-label" for="id">아이디</label>
            <%-- v-bind:class="{'is-valid':isIdValid, '!is-invalid':!isIdValid && isIdDirty}" --%>
            <%-- v-bind:class="idValid" --%>
            <input class="form-control" type="text" name="id" id="id"/>
            <small class="form-text text-muted">영문자 소문자로 시작하고 5글자~10글자 이내로 입력하세요</small>
            <div class="valid-feedback">사용 가능한 아이디 입니다.</div>
            <div class="invalid-feedback">사용할 수 없는 아이디 입니다.</div>
        </div>

        <div class="mb-2">
            <label class="control-label" for="pwd">비밀번호</label>
            <input class="form-control" type="password" name="pwd" id="pwd"/>
            <small class="form-text text-muted">특수 문자를 하나 이상 조합하세요.</small>
            <div class="invalid-feedback">비밀 번호를 확인 하세요</div>
        </div>
        <div class="mb-2">
            <label class="control-label" for="pwd2">비밀번호 확인</label>
            <input class="form-control" type="password" name="pwd2" id="pwd2"/>
        </div>

        <div class="mb-2">
            <label class="control-label" for="email">이메일</label>
            <%-- v-bind >> 생략 가능 --%>
            <input class="form-control" type="text" name="email" id="email"/>
            <div class="invalid-feedback">이메일 형식에 맞게 입력하세요.</div>
        </div>
        <button class="btn btn-outline-primary" type="submit" disabled>가입
        </button>
    </form>
</div>
<%-- <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script> --%>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script>
    let isIdValid = false;
    let isEmailDirty = false;
    let isEmailValid = false;
    let isPwdValid = false;
    let isPwdDirty = false;

    // 폼 전체의 유효성 여부를 판단해서 제출버튼의 disabled 속성을 관리하는 함수
    function checkFormState() {
        if (isIdValid && isPwdValid && isEmailValid) $("button[type=submit]").removeAttr("disabled");
        // 속성명만 추가할 때는 value 에 빈 문자열을 작성하면 된다.
        else $("button[type=submit]").attr("disabled", "");
    }

    // id 입력란에 입력을 했을 때 실행할 함수 등록
    $("#id").on("input", (e) => {
        // 입력한 아이디 읽어오기
        const inputId = e.target.value;
        // 정규표현식
        const reg = /^[a-z].{4,9}$/;
        // 정규표현식 통과 여부를 변수에 저장
        isIdValid = reg.test(inputId);
        // 만일 유효하다면
        if (isIdValid) $(e.target).removeClass("is-invalid").addClass("is-valid");
        // 유효하지 않다면
        else $(e.target).removeClass("is-valid").addClass("is-invalid");
        // 바닐라로 했을 때
        // e.target.classList.remove("is-invalid");
        // e.target.classList.add("is-valid");
        checkFormState();
    });

    $("#email").on("input", (e) => {
        isEmailDirty = true;
        // 입력한 email 을 읽어와서
        const inputEmail = $(e.target).val();
        // 이메일 형식에 맞게 작성했는지 검증을 해서
        const reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        // 유효성 여부를 변수에 저장하고
        isEmailValid = reg.test(inputEmail);
        // 유효하다면
        if (isEmailValid) $(e.target).removeClass("is-invalid").addClass("is-valid");
        // 유효하지 않다면
        else $(e.target).removeClass("is-valid").addClass("is-invalid");
        checkFormState();
    });

    // 비밀번호 입력란과 비밀번호 확인란에 입력했을 때 실행할 함수 등록(다중 등록)
    $("#pwd, #pwd2").on("input", () => {
        isPwdDirty = true;
        // 비밀번호 입력란과 확인란에 입력한 비밀번호를 모두 읽어온다.
        const pwd = $("#pwd").val();
        const pwd2 = $("#pwd2").val();
        // 특수문자가 포함되었는지 여부를 검증할 정규표현식
        const reg = /[\W]/;
        // 정규표현식도 통과하고 비밀번호 입력란과 확인란도 같은지 확인해서 비밀번호 유효성 여부에 반영
        isPwdValid = reg.test(pwd) && (pwd === pwd2);
        if (isPwdValid) $("#pwd").removeClass("is-invalid").addClass("is-valid");
        else $("#pwd").removeClass("is-valid").addClass("is-invalid");
        checkFormState();
    });
</script>
</body>
</html>
