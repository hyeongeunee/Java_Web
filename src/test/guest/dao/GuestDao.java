package test.guest.dao;


import test.guest.dto.GuestDto;
import test.member.dto.MemberDto;
import test.util.DbcpBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GuestDao {
    private static GuestDao dao;

    private GuestDao(){

    }
    public static GuestDao getInstance() {
        //서버 시작 후 최초 요청이라면
        //객체를 생성해서 static 필드에 저장해 놓는다
        if (dao == null) dao = new GuestDao();
        //필드에 저장된 참조값 리턴해주기
        return dao;
    }

    public List<GuestDto> getList(){
        //회원 목록을 담을 객체 미리 생성하기
        List<GuestDto> list = new ArrayList<>();

        //필요한 객체의 참조값을 담을 지역변수 미리 만들기
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            //DbcpBean 객체를 이용해서 Connection 객체를 얻어온다(Connection Pool 에서 얻어오기).
            conn = new DbcpBean().getConn();
            //실행할 sql 문
            String sql = "select *"
                    + " from board_guest "
                    +" order by num asc";
            pstmt = conn.prepareStatement(sql);
            //sql 문이 미완성이라면 여기서 완성

            //select 문 수행하고 결과값 받아오기
            rs=pstmt.executeQuery();
            //반복문 돌면서 ResultSet 에 담긴 내용 추출
            while (rs.next()) {
                //ResultSet 에 Cursor 가 위치한 곳의 칼럼 정보를 얻어와서 MemberDto 객체에 담고
                GuestDto dto = new GuestDto();
                dto.setNum(rs.getInt("num"));
                dto.setWriter(rs.getString("writer"));
                dto.setContent(rs.getString("content"));
                dto.setPwd(rs.getString("pwd"));
                dto.setRegdate(rs.getString("regdate"));
                //ArrayList 객체에 누적시키기
                list.add(dto);
            }
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close(); //Connection 이 아닌 Connection Pool 에 반납된다.
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        //회원 목록에 담긴 ArrayList 객체 리턴해주기
        return list;
    }

    public boolean insert(String writer, String content, String pwd) {
        int rowCount = 0; //초기값을 0으로 부여
        //insert, update, delete 작업을 통해서 변화된(추가, 수정, 삭제) row의 개수를 담을 변수
        Connection conn = null;
        PreparedStatement pstmt=null;
        try {
            //Connection 객체의 참조값 얻어오기
            conn = new DbcpBean().getConn();
            //실행할 sql문
            String sql = "insert into board_guest"
                    + "(num, writer, content, pwd, regdate)"
                    + "values (board_guest_seq.nextval, ?, ?, ?, to_char(sysdate,'yyyy.mm.dd hh24:mi'))";
            //sql문을 대신 실행해줄 PreparedStatement 객체의 참조값 얻어오기
            pstmt = conn.prepareStatement(sql);
            //sql 문이 ? 가 존재하는 미완성이라면 여기서 완성한다.
            pstmt.setString(1, writer);
            pstmt.setString(2, content);
            pstmt.setString(3, pwd);
            //insert or update or delete 문을 실제 수행한다. 변화된 row의 개수가 리턴된다.
            rowCount = pstmt.executeUpdate(); //수행하고 리턴되는 값을 변수에 담는다.
            System.out.println("작성되었습니다.");
        } catch (Exception e){
            e.printStackTrace();
        } finally { //예외가 발생을 하던 안하던 실행이 보장되는 블럭에서 사용
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ignored) {}
        }
        //변화된 row 의 개수가 0보다 크면 작업 성공
        return rowCount > 0;
    }

    public boolean check(int num, String pw){
        int rowCount = 0;
        Connection conn = null;
        PreparedStatement pstmt=null;
        try {
            //Connection 객체의 참조값 얻어오기
            conn = new DbcpBean().getConn();
            //실행할 sql문
            String sql = "SELECT * FROM board_guest"
                    + " WHERE num = ? AND pw = ?";
            //sql문을 대신 실행해줄 PreparedStatement 객체의 참조값 얻어오기
            pstmt = conn.prepareStatement(sql);
            //sql 문이 ? 가 존재하는 미완성이라면 여기서 완성한다.
            pstmt.setInt(1, num);
            pstmt.setString(2, pw);
            rowCount = pstmt.executeUpdate(); //수행하고 리턴되는 값을 변수에 담는다.
            System.out.println("비밀번호 일치");
        } catch (Exception e){
            e.printStackTrace();
        } finally { //예외가 발생을 하던 안하던 실행이 보장되는 블럭에서 사용
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ignored) {}
        }
        //변화된 row 의 개수가 0보다 크면 작업 성공
        return rowCount > 0;
    }

    public boolean delete(int num){
        int rowCount = 0;
        Connection conn = null;
        PreparedStatement pstmt=null;
        try {
            //Connection 객체의 참조값 얻어오기
            conn = new DbcpBean().getConn();
            //실행할 sql문
            String sql = "DELETE FROM board_guest"
                    + " WHERE num = ?";
            //sql문을 대신 실행해줄 PreparedStatement 객체의 참조값 얻어오기
            pstmt = conn.prepareStatement(sql);
            //sql 문이 ? 가 존재하는 미완성이라면 여기서 완성한다.
            pstmt.setInt(1, num);
            rowCount = pstmt.executeUpdate(); //수행하고 리턴되는 값을 변수에 담는다.
            System.out.println("삭제되었습니다.");
        } catch (Exception e){
            e.printStackTrace();
        } finally { //예외가 발생을 하던 안하던 실행이 보장되는 블럭에서 사용
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ignored) {}
        }
        //변화된 row 의 개수가 0보다 크면 작업 성공
        return rowCount > 0;
    }
}
