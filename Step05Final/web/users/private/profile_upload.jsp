<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="test.users.dto.UsersDto" %>
<%@ page import="test.users.dao.UsersDao" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-07
  Time: 오후 3:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%
  //파일을 저장할 서버에서의 실제 경로 구성하기
  String realPath = application.getRealPath("/upload");

  //아래의 MultipartRequest 객체가 예외 없이 잘 생성되면 webapp/upload 폴더에 파일이 자동으로 저장된다.
  MultipartRequest mr = new MultipartRequest(request,
          realPath,           //업로드된 파일을 저장할 경로
          1024*1024*50,       //최대 업로드 사이즈
          "utf-8",            //한글 파일명 깨지지 않도록
          new DefaultFileRenamePolicy());

  // MultipartRequest 객체의 메소드를 이용해서 폼전송된 내용을 추출해야 한다.
  String saveFileName = mr.getFilesystemName("image"); //저장된 파일명

  //DB 에 저장할 이미지 경로 구성하기
  String imagePath = "/upload/"+saveFileName;
%>
{"imagePath":"<%=imagePath%>"}