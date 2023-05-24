package com.sist.survlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 *   public class A
 *   {
 *   	public static void main(String[] arg)
 *   	{
 *   		System.out.println("Hello");
 *      }
 *   }
 */
import java.util.*;
import com.sist.dao.*;
@WebServlet("/BoardListSurvlet")
public class BoardListSurvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// JSP
		// 1. 변환 => 전송 (HTML,XML,JSON)
		// 브라우저로 미리 알려준다 => response
		response.setContentType("text/html;charset=UTF-8");
		// XML => text/xml , JSON => text/plain
		PrintWriter out=response.getWriter();
		// 사용자의 브라우저에서 읽어가는 위치를 설정 => OutputStream
		BoardDAO dao=BoardDAO.newInstance();
		List<BoardVO> list=dao.boardListData(1);
		out.println("<html>");
		out.println("<body>");
		out.println("<center>");
		out.println("<h1>자유 게시판</h1>");
		out.println("<table width=700 border=1 bordercolor=black>");
		out.print("<tr>");
		out.print("<th width=10%>번호</th>");
		out.print("<th width=45%>제목</th>");
		out.print("<th width=15%>이름</th>");
		out.print("<th width=20%>작성일</th>");
		out.print("<th width=10%>조회수</th>");
		out.print("</tr>");
		for(BoardVO vo:list)
		{
			out.print("<tr>");
			out.print("<td width=10% align=center>"+vo.getNo()+"</td>");
			out.print("<td width=45%>"+vo.getSubject()+"</td>");
			out.print("<td width=15%>"+vo.getName()+"</td>");
			out.print("<td width=20%>"+vo.getRegdate()+"</td>");
			out.print("<td width=10%>"+vo.getHit()+"</td>");
			out.print("</tr>");
		}
		out.print("</table>");
		out.println("</center>");
		out.println("</body>");
		out.println("</html>");
	}

}
