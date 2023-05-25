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

    private GuestDao() {

    }

    public static GuestDao getInstance() {
        if (dao == null) {
            dao = new GuestDao();
        }
        return dao;
    }

    public List<GuestDto> getList() {
        List<GuestDto> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = "SELECT * FROM board_guest ORDER BY num ASC";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                GuestDto dto = new GuestDto();
                dto.setNum(rs.getInt("num"));
                dto.setWriter(rs.getString("writer"));
                dto.setContent(rs.getString("content"));
                dto.setPwd(rs.getString("pwd"));
                dto.setRegdate(rs.getString("regDate"));
                list.add(dto);
            }
            System.out.println("getList");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close(); //Connection 이 Connection Pool 에 반납된다.
            } catch (Exception e) {
            }
        }
        return list;
    }

    public boolean insert(GuestDto dto) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int count = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = "INSERT INTO board_guest" +
                    " VALUES (board_guest_seq.nextval, ?, ?, ?, to_char(sysdate,'yyyy.mm.dd hh24:mi'))";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getWriter());
            pstmt.setString(2, dto.getContent());
            pstmt.setString(3, dto.getPwd());
            count = pstmt.executeUpdate();
            System.out.println("insert");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return count > 0;
    }

    public GuestDto getData(int num) {
        GuestDto dto = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = "SELECT writer, content, pwd FROM board_guest WHERE num = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                dto = new GuestDto();
                dto.setNum(num);
                dto.setWriter(rs.getString("writer"));
                dto.setContent(rs.getString("content"));
                dto.setPwd(rs.getString("pwd"));
            }
            System.out.println("getData");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return dto;
    }

    public String update(String content, int num) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int count = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = "UPDATE board_guest SET content = ? WHERE num = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, content);
            pstmt.setInt(2, num);
            count = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (count > 0) {
            return "ok";
        } else {
            return "no";
        }
    }

    public void delete(int num) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = "DELETE FROM board_guest WHERE num = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);
            pstmt.executeUpdate();
            System.out.println("delete");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

