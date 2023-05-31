<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-31
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>fetch/signup_form.jsp</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <h1>회원가입 폼</h1>
    <form action="signup_form.jsp" method="post">
      <div class="mb-2">
        <label class="form-label" for="id">아이디</label>
        <input class="form-control" type="text" id="id" name="id">
        <div class="form-text">
          4글자 이상 10글자 이하로 작성해주세요!
        </div>
        <div class="invalid-feedback">
          사용할 수 없는 아이디입니다!
        </div>
      </div>
      <div class="mb-2">
        <label for="email" class="form-label">이메일</label>
        <input type="text" class="form-control" id="email" name="email">
        <div class="invalid-feedback">
          이메일 형식에 맞게 입력해주세요!
        </div>
      </div>
      <button class="btn btn-primary btn-sm" type="submit" disabled="disabled">가입</button>
    </form>
  </div>
  <script>
    let isFormValid = false;
    let isIdValid = false;
    let isEmailValid = false;

    //아이디 입력란에 입력을 할 때마다 호출되는 콜백함수 등록하기
    document.querySelector("#id").addEventListener("input", (e) => {
      //1.입력한 아이디를 읽어온다.
      const inputId = e.target.value;

      //입력한 아이디가 4글자 이상 10글자 이하인지 확인해서
      const isLengthOk = inputId.length >= 4 && inputId.length <= 10;
      if(!isLengthOk){
        isIdValid=false;
        e.target.classList.add("is-invalid");
        e.target.classList.remove("is-valid");
        buttonChange();
        return; //함수를 여기서 종료
      } else {
        isIdValid=true;
        e.target.classList.add("is-valid");
        e.target.classList.remove("is-invalid");
        buttonChange();
      }
      //2. fetch() 를 이용해서 서버에 보낸다.
      fetch("checkid.jsp?inputId="+inputId)
      .then(res=res.json())
      .then((data)=>{
        //3. 사용가능 여부를 알아내서 동작한다.
        isIdValid = data.canUse;
        if(isIdValid){
          e.target.classList.add("is-valid");
          e.target.classList.remove("is-invalid");
        }else{
          e.target.classList.add("is-invalid");
          e.target.classList.remove("is-valid");
        }
        buttonChange();
      });
    });

    document.querySelector("#email").addEventListener("input", (e) => {
      const inputEmail = e.target.value;
      let regex = new RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
      isEmailValid = regex.test(inputEmail);
      if (isEmailValid) {
        e.target.classList.add("is-valid");
        e.target.classList.remove("is-invalid");
      } else {
        e.target.classList.add("is-invalid");
        e.target.classList.remove("is-valid");
      }
      buttonChange();
    })

    function buttonChange() {
      isFormValid = isIdValid && isEmailValid;
      if (isFormValid) document.querySelector("button[type=submit]").removeAttribute("disabled");
      else document.querySelector("button[type=submit]").setAttribute("disabled", "disabled");
    }
  </script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>

</html>
