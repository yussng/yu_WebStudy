package com.sist.dao;
import java.sql.*;
import java.util.*;
import com.sist.common.*;
import com.sist.vo.MemberVO;
import com.sist.vo.ZipcodeVO;
public class MemberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private CreateDataBase db=new CreateDataBase();
	private static MemberDAO dao;
	
	// 싱글턴
	public static MemberDAO newInstance()
	{
		if(dao==null)
			dao=new MemberDAO();
		return dao;
	}
	// 회원 가입
	// 1. 아이디 중복체크
	public int membermnoCheck(String mno)
	{
		int count=0;
		try 
		{
			conn=db.getConnection();
			String sql="SELECT COUNT(*) "
					+ "FROM project1_member "
					+ "WHERE mno=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, mno);
			ResultSet rs=ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
			rs.close();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			db.disConnection(conn, ps);
		}
		return count;
	}
	// 2. 이메일 중복체크
	public int memberEmailCheck(String email)
	{
		int count=0;
		try 
		{
			conn=db.getConnection();
			String sql="SELECT COUNT(*) "
					+ "FROM project1_member "
					+ "WHERE email=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
			rs.close();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			db.disConnection(conn, ps);
		}
		return count;
	}
	// 3. 우편번호 검색
	public int postFindCount(String dong)
	{
		int count=0;
		try
		{
			conn=db.getConnection();
			String sql="SELECT COUNT(*) "
					+ "FROM zipcode "
					+ "WHERE dong LIKE '%'||?||'%'";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dong);
			ResultSet rs=ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
			rs.close();
		}catch(Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			db.disConnection(conn, ps);
		}
		return count;
	}
	
	public List<ZipcodeVO> postFindData(String dong)
	{
		List<ZipcodeVO> list=new ArrayList<ZipcodeVO>();
		try 
		{
			conn=db.getConnection();
			String sql="SELECT zipcode,sido,gugun,dong,NVL(bunji,' ') "
					+ "FROM zipcode "
					+ "WHERE dong LIKE '%'||?||'%'";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dong);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				ZipcodeVO vo=new ZipcodeVO();
				vo.setZipcode(rs.getString(1));
				vo.setSido(rs.getString(2));
				vo.setGugun(rs.getString(3));
				vo.setDong(rs.getString(4));
				vo.setBunji(rs.getString(5));
				list.add(vo);
			}
			rs.close();
		}catch(Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			db.disConnection(conn, ps);
		}
		return list;
	} 
	// 회원가입
	/*
	 *   MNO                                       NOT NULL NUMBER
		 mno                                                 VARCHAR2(20)
		 PWD                                       NOT NULL VARCHAR2(20)
		 NAME                                      NOT NULL VARCHAR2(51)
		 NICKNAME                                  NOT NULL VARCHAR2(20)
		 SEX                                                VARCHAR2(6)
		 BIRTHDAY                                  NOT NULL VARCHAR2(20)
		 EMAIL                                              VARCHAR2(120)
		 POST                                      NOT NULL VARCHAR2(20)
		 ADDR1                                     NOT NULL VARCHAR2(300)
		 ADDR2                                              VARCHAR2(300)
		 ADMIN                                              CHAR(1)
	 */
	public void memberInsert(MemberVO vo)
	{
		try
		{
			conn=db.getConnection();
			String sql="INSERT INTO project1_member VALUES( "
					+ "?,?,?,?,?,?,?,?,?,?,'n')";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getMno());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getNickname());
			ps.setString(5, vo.getSex());
			ps.setString(6, vo.getBirthday());
			ps.setString(7, vo.getEmail());
			ps.setString(8, vo.getPost());
			ps.setString(9, vo.getAddr1());
			ps.setString(10, vo.getAddr2());
			ps.executeUpdate();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			db.disConnection(conn, ps);
		}
	}
	// 회원 수정
	// 회원 탈퇴
	// 아이디 찾기
	// 비밀번호 찾기
	// 비밀번호 변경
	// 로그인
	public MemberVO memberLogin(String mno,String pwd)
	{
		MemberVO vo=new MemberVO();
		try
		{
			conn=db.getConnection();
			String sql="SELECT COUNT(*) "
					+ "FROM project1_member "
					+ "WHERE mno=?"; 
			ps=conn.prepareStatement(sql);
			ps.setString(1, mno);
			ResultSet rs=ps.executeQuery();
			rs.next();
			int count=rs.getInt(1);
			rs.close();
			/////////////////////// mno 존재여부
			if(count==0) // mno X
			{
				vo.setMsg("NOmno");
			}
			else  // mno O
			{
				sql="SELECT pwd,name,admin,sex "
						+ "FROM project1_member "
						+ "WHERE mno=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1, mno);
				rs=ps.executeQuery();
				rs.next();
				String db_pwd=rs.getString(1);
				String name=rs.getString(2);
				String admin=rs.getString(3);
				String sex=rs.getString(4);
				rs.close();
				
				if(db_pwd.equals(pwd))
				{
					vo.setMno(mno);
					vo.setName(name);
					vo.setAdmin(admin);
					vo.setSex(sex);
					vo.setMsg("OK");
				}
				else
				{
					vo.setMsg("NOPWD");
				}
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			db.disConnection(conn, ps);
		}
		return vo;
	}
	
	
}
