package test.cafe.dao;

import test.cafe.dto.CafeDto;
import test.util.DbcpBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CafeDao {
    private static CafeDao dao;

    private CafeDao(){
    }

    public static CafeDao getInstance(){
        if (dao == null){
            dao = new CafeDao();
        }return dao;
    }

    public boolean insert(CafeDto dto) throws Exception{
        int rowCount = 0;
        Connection conn = new DbcpBean().getConn();
        String sql =  "INSERT INTO BOARD_CAFE"
                + " (NUM, WRITER, TITLE, CONTENT, VIEWCOUNT, REGDATE)"
                + " VALUES(BOARD_CAFE_SEQ.NEXTVAL, ?, ?, ?, ?, SYSDATE)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (conn; pstmt){
            pstmt.setString(1, dto.getWriter());
            pstmt.setString(2, dto.getTitle());
            pstmt.setString(3, dto.getContent());
            pstmt.setInt(4, dto.getViewCount());
            rowCount = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rowCount > 0;
    }

    public boolean update(CafeDto dto) throws Exception{
        int rowCount = 0;
        Connection conn = new DbcpBean().getConn();
        String sql =  "UPDATE BOARD_CAFE SET TITLE = ?, CONTENT = ?" +
                " WHERE NUM = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (conn; pstmt){
            pstmt.setString(1, dto.getTitle());
            pstmt.setString(2, dto.getContent());
            pstmt.setInt(3, dto.getNum());
            rowCount = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rowCount > 0;
    }

    public boolean delete(int num) throws Exception{
        int rowCount = 0;
        Connection conn = new DbcpBean().getConn();
        String sql = "DELETE FROM BOARD_CAFE"
                + " WHERE NUM = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (conn; pstmt){
            pstmt.setInt(1, num);
            rowCount = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rowCount > 0;
    }

    public CafeDto getData(int num) throws Exception{
        CafeDto dto = null;
        Connection conn = new DbcpBean().getConn();
        String sql = "SELECT WRITER, TITLE, CONTENT, VIEWCOUNT, REGDATE"
                + " FROM BOARD_CAFE"
                + " WHERE NUM = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        try (conn; pstmt){
            pstmt.setInt(1, num);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                dto = new CafeDto();
                dto.setNum(num);
                dto.setWriter(rs.getString("writer"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setViewCount(rs.getInt("viewCount"));
                dto.setRegdate(rs.getString("regdate"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }   return dto;
    }

    public List<CafeDto> getList(CafeDto dto) throws Exception{
        List<CafeDto> list = new ArrayList<>();
        Connection conn = new DbcpBean().getConn();
        String sql = "SELECT *"
                + "   FROM"
                + "        (SELECT result2.*, ROWNUM AS rnum"
                + "         FROM"
                + "             (SELECT NUM, WRITER, TITLE, VIEWCOUNT, regdate"
                + "              FROM BOARD_CAFE"
                + "              ORDER BY num DESC) result2)"
                + "   WHERE rnum BETWEEN ? AND ?";;
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        try (conn; pstmt; rs) {
            pstmt.setInt(1, dto.getStartRowNum());
            pstmt.setInt(2, dto.getEndRowNum());
            while (rs.next()) {
                //FileDto 객체에 select 된 row 하나의 정보를 담고
                CafeDto tmp = new CafeDto();
                tmp.setNum(rs.getInt("num"));
                tmp.setWriter(rs.getString("writer"));
                tmp.setTitle(rs.getString("title"));
                tmp.setViewCount(rs.getInt("viewCount"));
                tmp.setRegdate(rs.getString("regdate"));
                //ArrayList 객체에 누적 시킨다.
                list.add(tmp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } return list;
    }

    public List<CafeDto> getListAll() throws Exception{
        List<CafeDto> list = new ArrayList<>();
        Connection conn = new DbcpBean().getConn();
        String sql = "SELECT NUM, WRITER, TITLE, VIEWCOUNT, regdate"
                + " FROM BOARD_CAFE"
                + " ORDER BY num DESC";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        try (conn; pstmt; rs) {
            while (rs.next()) {
                CafeDto tmp = new CafeDto();
                tmp.setNum(rs.getInt("num"));
                tmp.setWriter(rs.getString("writer"));
                tmp.setTitle(rs.getString("title"));
                tmp.setViewCount(rs.getInt("viewCount"));
                tmp.setRegdate(rs.getString("regdate"));
                list.add(tmp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean addViewCount(int num){
        return false;
    }
}
